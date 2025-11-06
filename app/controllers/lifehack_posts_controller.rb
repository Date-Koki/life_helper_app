class LifehackPostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @lifehack_post = LifehackPost.new
  end

  def create
    @lifehack_post = current_user.lifehack_posts.build(lifehack_post_params)
    @lifehack_post.nickname = current_user.nickname
    if @lifehack_post.save
      redirect_to root_path, notice: '投稿が作成されました！'
    else
      render :new
    end
  end

  def show
    @lifehack_post = LifehackPost.find(params[:id])
  end

  private

  def lifehack_post_params
    params.require(:lifehack_post).permit(:title, :category_id, :image, :description)
  end
end
