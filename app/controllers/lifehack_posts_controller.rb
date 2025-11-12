class LifehackPostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

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
    @comment = LifehackComment.new
    @comments = @lifehack_post.lifehack_comments.includes(:user)
  end

  def edit
  end

  def update
    if @lifehack_post.update(lifehack_post_params)
      redirect_to root_path, notice: "編集しました"
    else
      render :edit
    end
  end

  def destroy
    if @lifehack_post.user == current_user
      @lifehack_post.destroy
      redirect_to root_path, notice: "投稿を削除しました"
    else
      redirect_to root_path, alert: "他のユーザーの投稿は削除できません"
    end
  end

  private

  def lifehack_post_params
    params.require(:lifehack_post).permit(:title, :category_id, :image, :description)
  end

  def set_post
    @lifehack_post = LifehackPost.find(params[:id])
  end

end
