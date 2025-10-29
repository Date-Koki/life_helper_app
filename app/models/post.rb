class Post < ApplicationRecord
  belongs_to :user, optional: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  validates :title, presence: true
  validates :category_id, numericality: { other_than: 0, message: "が選択されていません" }
  validates :schedule_at, presence: true
  validates :description, presence: true
end
