require "rails_helper"

RSpec.describe User do
  describe "#todos" do
    it "returns the todos for the correct email address" do
      todo_for_me = create(:todo, owner_email: "me@example.com")
      todo_for_someone_else = create(:todo, owner_email: "not-me@example.com")

      user = User.new(email: "me@example.com")

      expect(user.todos).to eq [todo_for_me]
    end
  end

  describe "#signed_in?" do
    it "returns true when an email is assigned" do
      user = User.new(email: "foo@example.com")

      expect(user).to be_signed_in
    end

    it "returns false when an email is nil" do
      user = User.new(email: nil)

      expect(user).not_to be_signed_in
    end
  end
end
