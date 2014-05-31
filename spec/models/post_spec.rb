require 'spec_helper'

describe Post, :type => :model do
  it "has a valid factory" do
  	post = FactoryGirl.build_stubbed :post
    expect(post).to be_valid
  end
  it "is invalid without a title" do
   	post = FactoryGirl.build_stubbed :post
   	post.title =nil
   	expect(post).not_to be_valid
  end
  it "returns the title"
  it "returns the body"
end
