require "rails_helper"

feature "User completes a todo" do
  scenario "successfully" do
    sign_in

    todos_page = Pages::Todos.new
    todos_page.create_todo title: "Buy eggs"
    todos_page.create_todo title: "Buy milk"
    todos_page.mark_complete "Buy eggs"

    expect(todos_page).to have_completed_todo_titled "Buy eggs"
  end
end
