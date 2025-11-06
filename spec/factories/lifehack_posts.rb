FactoryBot.define do
  factory :lifehack_post do
    title { Faker::Commerce.product_name}
    category_id { Faker::Number.between(from: 1, to: 5) }
    description { Faker::Lorem.sentence }
    association :user
  end
end
