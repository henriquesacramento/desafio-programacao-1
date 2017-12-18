FactoryGirl.define do
  factory :merchant do
    name Faker::Company.name
    address Faker::Address.street_address
  end
end
