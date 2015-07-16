require "rails_helper"

RSpec.describe Guest do
  describe "#signed_in?" do
    it "returns false" do
      expect(Guest.new).not_to be_signed_in
    end
  end
end
