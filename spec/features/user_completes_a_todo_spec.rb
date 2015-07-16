require "rails_helper"

feature "User completes a todo" do
  scenario "successfully" do
    sign_in
    create_todo_titled title: "Buy eggs"
    create_todo_titled title: "Buy milk"

    within "li:contains('Buy eggs')" do
      click_on "Mark complete"
    end

    expect(page).to have_css "ul.todos li.completed", text: "Buy eggs"
  end

  def create_todo_titled(title:)
    click_on "Create todo"
    fill_in "Title", with: title
    click_on "Submit"
  end
end
