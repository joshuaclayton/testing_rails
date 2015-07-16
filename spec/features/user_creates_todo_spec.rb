require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    sign_in
    create_todo_titled title: "Buy eggs"

    expect(page).to have_css "ul.todos", text: "Buy eggs"
  end

  def create_todo_titled(title:)
    click_on "Create todo"
    fill_in "Title", with: title
    click_on "Submit"
  end
end
