class LifehackComment < ApplicationRecord
  belongs_to :user
  belongs_to :lifehack_post
end
