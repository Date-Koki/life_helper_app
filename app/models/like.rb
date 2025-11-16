class Like < ApplicationRecord
  belongs_to :user
  belongs_to :lifehack_post

  validates :user_id, uniqueness: { scope: :lifehack_post_id }
end
