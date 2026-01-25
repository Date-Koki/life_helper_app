class LifehackCommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_lifehack_comment, only: [:destroy]
  before_action :authorize_comment!, only: [:destroy]

  def create
    lifehack_comment = LifehackComment.create(comment_params)
    redirect_to lifehack_post_path(lifehack_comment.lifehack_post)
  end

  def destroy
    @lifehack_comment.destroy
    redirect_to lifehack_post_path(@lifehack_comment.lifehack_post),
                notice: "コメントを削除しました"
  end

  private

  def set_lifehack_comment
    @lifehack_comment = LifehackComment.find(params[:id])
  end

  def authorize_comment!
    unless @lifehack_comment.user_id == current_user.id
      redirect_to root_path, alert: "権限がありません"
    end
  end

  def comment_params
    params.require(:lifehack_comment)
          .permit(:text)
          .merge(
            user_id: current_user.id,
            lifehack_post_id: params[:lifehack_post_id]
          )
  end
end