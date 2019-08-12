require 'rails_helper'

describe "A user" do

#  it 'is valid with example attributes ' do
#    user = User.new()
#    expect(user.valid?).to eq(true)
#  end

  it 'requires a name presence ' do
    user = User.new(name:"")
    user.save
    expect(user.errors[:name].any?).to eq(true)
  end

  it 'requires an email presence' do
    user = User.new(email:"")
    user.save
    expect(user.errors[:email].any?).to eq(true)
  end

  it 'rejects improperly formatted email' do
    bad_emails = ["b@.com", "@", "@net"]
    bad_emails.each do |email|
      user = User.new(email: email)
      user.save
      expect(user.errors[:email].any?).to eq(true)
    end
  end

  it 'accepts properly formatted email' do
    user = User.new(email:"go@go.com")
    user.valid?
    expect(user.errors[:email].any?).to eq(false)
  end

  it 'requires unique email per database row' do

    user = User.new(name: "bob", email:"bob@go.com", password: "password", username: "user")
    user.save

    user2 = User.new(name: "bob", email:"bob@go.com", password: "password", username: "user")
    user2.save

    expect(user2.errors.full_messages.first).to include("has already been taken")

  end

  it 'has case insensitive email' do

    user = User.new(name: "bob", email:"bob@go.com", password: "password", username: "user")
    user.save

    user2 = User.new(name: "bob", email:"BoB@go.com", password: "password", username: "user")
    user2.save

    expect(user2.errors.full_messages.first).to include("has already been taken")

  end

  it 'requires a password' do
    user = User.new(password:"")
    user.valid?
    expect(user.errors[:password].any?).to eq(true)
  end



end