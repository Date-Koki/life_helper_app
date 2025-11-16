class LifehackPost < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
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
end
