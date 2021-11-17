require 'rails_helper'

RSpec.describe User, type: :model do
  it "User is valid" do
    user = User.new(
      name: "Andrei", 
      email: "andrei@teste.com", 
      phone: "00999999999",
      avatar: fixture_file_upload(Rails.root.join("spec", "support", "test-avatar.png"), "image/png"),
      password: "123456"
    )

    expect(user).to be_valid
  end

  it "User without avatar is not valid" do
    user = User.new(
      name: "Andrei", 
      email: "andrei@teste.com", 
      phone: "00999999999",
      password: "123456"
    )

    expect(user).to_not be_valid
  end

  it "User without name is not valid" do
    user = User.new(
      email: "andrei@teste.com", 
      phone: "00999999999",
      avatar: fixture_file_upload(Rails.root.join("spec", "support", "test-avatar.png"), "image/png"),
      password: "123456"
    )

    expect(user).to_not be_valid
  end
end
