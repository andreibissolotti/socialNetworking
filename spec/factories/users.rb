FactoryBot.define do
  factory :user do
    name { "Fulano" }
    email { "fulano@user.com" }
    phone { "00988888888" }
    avatar { Rack::Test::UploadedFile.new(Rails.root.join("spec", "support", "test-avatar.png"), "image/png") }
    password { "123456" }
  end 
end