require "rails_helper"

feature "User views todos" do
  scenario "without seeing others' todos" do
    create :todo, title: "Buy milk", owner_email: "not-me@example.com"

    sign_in_as email: "me@example.com"

    todos_page = Pages::Todos.new
    expect(todos_page).not_to have_todo_titled "Buy milk"
  end
end
