class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = todo_scope
  end

  def new
    @todo = Todo.new
  end

  def create
    todo_scope.create(todo_params)
    redirect_to root_path
  end

  private

  def todo_scope
    current_user.todos
  end

  def todo_params
    params.require(:todo).permit(:title)
  end
end
