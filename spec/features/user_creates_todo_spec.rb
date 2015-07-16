require "rails_helper"

feature "User creates todo" do
  scenario "successfully" do
    visit root_path
    click_on "Create todo"
    fill_in "Title", with: "Buy eggs"
    click_on "Submit"

    expect(page).to have_css "ul.todos", text: "Buy eggs"
  end
end
