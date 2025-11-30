class LifehackPost < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category, optional: true
  belongs_to :user
  has_many :lifehack_comments, dependent: :destroy
  has_one_attached :image
  has_many :likes, dependent: :destroy

  def liked_by?(user)
    likes.exists?(user_id: user.id)
  end

  validates :title, presence: true
  validates :category_id, numericality: { other_than: 0, message: "が選択されていません" }
  validates :description, presence: true

  def self.ransackable_attributes(auth_object = nil)
    %w[title content user_id category_id]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[user category]
  end
  
  # タイトルまたは説明文で検索できる仮想属性を追加
  def self.ransackable_attributes(auth_object = nil)
    %w[title description category_id] + super
  end
end
