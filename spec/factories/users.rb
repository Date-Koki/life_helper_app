FactoryBot.define do
  factory :user do
    name {Faker::Name.name}
    nickname { Faker::Name.name }
    email { Faker::Internet.unique.email }
    password { 'abc123' }
    password_confirmation { 'abc123' }
  end
end