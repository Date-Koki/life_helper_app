class LikesController < ApplicationController
  before_action :set_lifehack_post

  def create
    @lifehack_post = LifehackPost.find(params[:lifehack_post_id])
    current_user.likes.create(lifehack_post: @lifehack_post)

    respond_to do |format|
      format.js
      format.html { redirect_to @lifehack_post }
    end
  end

  def destroy
    @like = @lifehack_post.likes.find_by(user: current_user)
    @like&.destroy

    respond_to do |format|
      format.js
      format.html { redirect_to @lifehack_post }
    end
  end

  private

  def set_lifehack_post
    @lifehack_post = LifehackPost.find(params[:lifehack_post_id])
  end
end