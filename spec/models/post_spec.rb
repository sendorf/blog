require 'spec_helper'

describe Post, :type => :model do
  it "has a valid factory"
  it "is invalid without a title"
  it "is invalid without a body"
  it "returns the title"
  it "returns the body"
end
