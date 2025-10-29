FactoryBot.define do
  factory :post do
    association :user

    title { Faker::Commerce.product_name}
    category_id { Faker::Number.between(from: 1, to: 5) }
    schedule_at { Faker::Time.forward(days: 5, period: :evening) }
    description { Faker::Lorem.sentence }
    
  end
end
