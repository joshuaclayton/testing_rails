require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in

    todos_page = Pages::Todos.new
    todos_page.create_todo title: "Buy eggs"

    expect(todos_page).to have_todo_titled "Buy eggs"
  end
end
