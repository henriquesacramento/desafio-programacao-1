FactoryGirl.define do
  factory :user do
    name Faker::Name.first_name  
    last_name Faker::Name.last_name
    email Faker::Internet.email
    username Faker::Internet.user_name(Faker::Name.first_name)
    password "12345678"
    password_confirmation "12345678"
  end
end
