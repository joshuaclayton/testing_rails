require "rails_helper"

feature "User views todos" do
  scenario "without seeing others' todos" do
    create :todo, title: "Buy milk", owner_email: "not-me@example.com"

    sign_in_as email: "me@example.com"

    expect(page).not_to have_css "ul.todos", text: "Buy milk"
  end
end
