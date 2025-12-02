class User < ApplicationRecord

  has_many :lifehack_posts, dependent: :destroy
  has_many :lifehack_comments, dependent: :destroy
  has_many :posts
  has_many :likes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         password_length: 6..128, email_regexp: /@/

  validates :name, presence: true,
                   format: { with: /\A[一-龥ぁ-んァ-ヶー－\s]+\z/, message: "は漢字またはカナで入力してください" }

  validates :nickname, presence: true

  validates :password, length: { minimum: 6, message: 'は6文字以上で入力してください' },
            format: { with: /\A[a-zA-Z0-9]+\z/, message: 'は半角文字にしてください' }, confirmation: { message: '（確認）が一致していません' }
  validate :password_complexity, if: -> { password.present? }

  private

  def password_complexity
    return if password.blank?

    if password =~ /[^\x20-\x7E]/
      errors.add(:password, 'は半角文字にしてください')
    elsif password !~ /[a-zA-Z]/ && password =~ /\d/
      errors.add(:password, 'は英字を含めて設定してください')
    elsif password !~ /\d/ && password =~ /[a-zA-Z]/
      errors.add(:password, 'には数字を含めて設定してください')
    end
  end
end
