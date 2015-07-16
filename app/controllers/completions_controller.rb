class CompletionsController < ApplicationController
  def create
    todo.mark_complete# update(completed_at: Time.current)
    redirect_to root_path
  end

  private

  def todo
    Todo.find(params[:todo_id])
  end
end
