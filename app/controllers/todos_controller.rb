class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create(todo_params)
    redirect_to root_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end
