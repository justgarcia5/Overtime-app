require 'rails_helper'

RSpec.describe Post, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  before do
    @post = Post.create(date: Date.today, rationale: "Anything")

  end
  describe "Creation" do
    it "can be created" do
      expect(@post).to be_valid
    end
    it "cannot be created without a date and rationale" do
      @post.date = nil
      @post.rationale = nil
      expect(@post).to_not be_valid
    end
  end
end
