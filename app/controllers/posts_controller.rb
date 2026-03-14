class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.where(user_id: current_user&.id)

    if params[:status] == "incomplete"
      @posts = @posts.where(completed: false)
    elsif params[:status] == "completed"
      @posts = @posts.where(completed: true)
    end

    @posts = @posts.order(created_at: :desc)
    @q = LifehackPost.ransack(params[:q])
    @lifehack_posts = @q.result(distinct: true)

    @near_posts = current_user.posts
    .where(completed: false)
    .where(schedule_at: Time.current..3.days.from_now)

    if current_user
      @total_posts = current_user.posts.count
      @done_posts = current_user.posts.where(completed: true).count
      @completion_rate = @total_posts > 0 ? (@done_posts * 100) / @total_posts : 0
    end

    if @total_posts > 0
      @completion_rate = (@done_posts * 100) / @total_posts
    else
      @completion_rate = 0
    end

    def toggle_complete
      post = current_user.posts.find(params[:id])
      post.update(completed: !post.completed)
      redirect_to root_path
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path, notice: "投稿しました"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to root_path, notice: "編集しました"
    else
      render :edit
    end
  end

  def destroy
    if @post.user == current_user
      @post.destroy
      redirect_to root_path, notice: "投稿を削除しました"
    else
      redirect_to root_path, alert: "他のユーザーの投稿は削除できません"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :category_id, :schedule_at, :description).merge(user: current_user)
  end
  
  def set_post
    @post = Post.find(params[:id])
  end

end
