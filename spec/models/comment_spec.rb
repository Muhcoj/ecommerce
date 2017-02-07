require 'rails_helper'

describe Comment do

	it "is valid" do
    expect(FactoryGirl.build(:comment)).to be_valid
  end

  it "should require a body" do
    expect(FactoryGirl.build(:comment, :body => "")).to be_invalid
	end

	it "should require a rating" do
    expect(FactoryGirl.build(:comment, :rating => nil)).to be_invalid
	end

	it "should require a user" do
    expect(FactoryGirl.build(:comment, :user => nil)).to be_invalid
	end

end 