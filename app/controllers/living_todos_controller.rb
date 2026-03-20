class LivingTodosController < ApplicationController

  def create
    @todos = LivingTodo::TODO_TEMPLATES
  end
end
