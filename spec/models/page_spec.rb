require 'rails_helper'

RSpec.describe Page, :type => :model do
  before :each do
    @john = User.create(first_name: "John", last_name: "Doe", email: "jdoe@gmail.com")
    @user_id = @john.id
  end

  it "should create a page with title, content and user_id" do
    page = Page.create(title: "Test", content: "test", user_id: @user_id)
    expect(page.title).to eql("Test")
    expect(page.content).to eql("test")
    expect(page.user_id).to eql(@john.id)
  end

  it "should require a title for a new page" do
    page = Post.new(content: "test", user_id: @user_id)
    page.should_not be_valid
  end

  it "should require content for a new page" do
    page = Post.new(title: "Test", user_id: @user_id)
    page.should_not be_valid
  end

  it "should require content for a new page" do
    page = Post.new(title: "Test", content: "test")
    page.should_not be_valid
  end

  it "should allow page to be found by user.pages" do
    page = Page.create(title: "Test", content: "test", user_id: @user_id)
    expect(@john.pages.size).to eql(1)
  end
end
