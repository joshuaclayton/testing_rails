require "rails_helper"

RSpec.describe Todo do
  describe "#complete?" do
    it "returns true when completed_at is set" do
      todo = Todo.new(completed_at: Time.current)

      expect(todo).to be_complete
    end

    it "returns false when completed_at is nil" do
      todo = Todo.new(completed_at: nil)

      expect(todo).not_to be_complete
    end
  end

  describe "#mark_complete" do
    it "updates the record with completed_at" do
      todo = Todo.create

      todo.mark_complete

      expect(todo.reload).to be_complete
    end
  end
end
