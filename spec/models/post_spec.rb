require 'rails_helper'

RSpec.describe Post, :type => :model do

  before :each do
    @john = User.create(first_name: "John", last_name: "Doe", email: "jdoe@gmail.com")
    @user_id = @john.id
  end

  it "should create a post with title, content and user_id" do
    post = Post.create(title: "Test", content: "test", user_id: @user_id)
    expect(post.title).to eql("Test")
    expect(post.content).to eql("test")
    expect(post.user_id).to eql(@john.id)
  end

  it "should require a title for a new post" do
    post = Post.new(content: "test", user_id: @user_id)
    post.should_not be_valid
  end

  it "should require content for a new post" do
    post = Post.new(title: "Test", user_id: @user_id)
    post.should_not be_valid
  end

  it "should require content for a new post" do
    post = Post.new(title: "Test", content: "test")
    post.should_not be_valid
  end

end
