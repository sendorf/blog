require 'spec_helper'

describe Post, :type => :model do
  it "has a valid factory" do
  	post = FactoryGirl.build_stubbed :post
    expect(post).to be_valid
  end
  it "is invalid without a title" do
   	post = FactoryGirl.build_stubbed :post, :title => nil
   	expect(post).not_to be_valid
  end
  it "is invalid without a body" do
   	post = FactoryGirl.build_stubbed :post, :body => nil
   	expect(post).not_to be_valid
  end
  it "returns the title" do
  	post = FactoryGirl.build_stubbed :post, :title => "Title"
  	expect(post.title).to eq("Title")
	end
  it "returns the body" do
  	post = FactoryGirl.build_stubbed :post, :body => "Body"
  	expect(post.body).to eq("Body")
	end
  it "has creation date" do
    post = FactoryGirl.build_stubbed :post
    expect(post.created_at).not_to be_nil
  end
  it "has many comments" do
    post = FactoryGirl.build_stubbed :post
    expect(post).to have_many :comments
  end
end
