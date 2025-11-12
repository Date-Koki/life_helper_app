class LifehackCommentsController < ApplicationController
  def create
    lifehack_comment = LifehackComment.create(comment_params)
    redirect_to lifehack_post_path(lifehack_comment.lifehack_post)
  end

  private
  def comment_params
    params.require(:lifehack_comment).permit(:text).merge(user_id: current_user.id, lifehack_post_id: params[:lifehack_post_id])
  end
end
