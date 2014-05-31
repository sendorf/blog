require 'spec_helper'

describe Comment, :type => :model do
  it "has a valid factory" do
  	comment = FactoryGirl.build_stubbed :comment
    expect(comment).to be_valid
  end
  it "is invalid without a user" do
   	comment = FactoryGirl.build_stubbed :comment, :user => nil
   	expect(comment).not_to be_valid
  end
  it "is invalid without a body" do
   	comment = FactoryGirl.build_stubbed :comment, :body => nil
   	expect(comment).not_to be_valid
  end
  it "returns the user" do
  	comment = FactoryGirl.build_stubbed :comment, :user => "User"
  	expect(comment.user).to eq("User")
	end
  it "returns the body" do
  	comment = FactoryGirl.build_stubbed :comment, :body => "Body"
  	expect(comment.body).to eq("Body")
	end
  it "has creation date" do
    comment = FactoryGirl.build_stubbed :comment
    expect(comment.created_at).not_to be_nil
  end
  it "comment belongs to post" do
    comment = FactoryGirl.build_stubbed :comment
    expect(comment).to belong_to :post
	end
	it "returns the post it belongs to" do
		comment = FactoryGirl.build_stubbed :comment
		expect(comment.post).not_to be_nil
	end
end
