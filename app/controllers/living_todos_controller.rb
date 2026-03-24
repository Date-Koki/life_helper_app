class LivingTodosController < ApplicationController

  def create
    @prefecture = params[:prefecture]

    @todos = LivingTodo::TODO_TEMPLATES
    @links = LivingTodo::CITY_LINKS[@prefecture]
  end

  def bulk_create
    todos = params.require(:todos).permit!

    todos.each do |_, todo|
      next unless todo["checked"] == "1"
      next if todo["title"].blank?

      category, title = todo["title"].split("|")

      schedule = if todo["schedule_at"].present?
                  Time.zone.parse(todo["schedule_at"])
                 else
                  Time.current + 1.day
                 end

      Post.create(
        title: title,
        description: todo["description"].presence || "新生活TODO",
        schedule_at: schedule,
        category_id: Category.find_by(name: category)&.id || 1,
        user: current_user
      )
    end

    redirect_to root_path, notice: "TODOを追加しました！"
  end
end
