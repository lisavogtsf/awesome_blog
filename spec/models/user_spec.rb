require 'rails_helper'

RSpec.describe User, :type => :model do
  it "creates a new user" do
    john = User.create(first_name: "John", last_name: "Doe", email: "jdoe@gmail.com")
    expect(john.first_name).to eql("John")
    expect(john.last_name).to eql("Doe")
    expect(john.email).to eql("jdoe@gmail.com")
  end

  it "will require first_name" do
    john = User.new(last_name: "Doe", email: "jdoe@gmail.com")
    john.should_not be_valid
  end

  it "will require last_name" do
    john = User.new(first_name: "John", email: "jdoe@gmail.com")
    john.should_not be_valid
  end

  it "will require email" do
    john = User.new(first_name: "John", last_name: "Doe")
    john.should_not be_valid
  end

  it "will require email with @ sybmol" do
    john = User.new(first_name: "John", last_name: "Doe", email: "jdoegmail.com")
    john.should_not be_valid
  end
  it "will require email with a dot" do
    john = User.new(first_name: "John", last_name: "Doe", email: "jdoe@gmailcom")
    john.should_not be_valid
  end

end
