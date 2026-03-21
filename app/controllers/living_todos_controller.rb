class LivingTodosController < ApplicationController

  def create
    @prefecture = params[:prefecture]

    @todos = LivingTodo::TODO_TEMPLATES
    @links = LivingTodo::CITY_LINKS[@prefecture]
  end

  def bulk_create
    selected_todos = params[:todos] || []

    return redirect_to root_path, alert: "選択してください" if selected_todos.empty?

    selected_todos.each do |todo|
      category, title = todo.split("|")

      Post.create(
        title: title,
        description: "新生活TODO",
        schedule_at: Time.current + 1.day,
        category_id: Category.find_by(name: category)&.id || 1,
        user: current_user
      )
    end

    redirect_to root_path, notice: "TODOを追加しました！"
  end
end
