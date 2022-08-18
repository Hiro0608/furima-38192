FactoryBot.define do
  factory :item do
    name { Faker::Name.name } 
    price { Faker::Number.between(from: 300, to: 9_999_999) }
    introduction { Faker::Lorem.sentence }
    category_id { Faker::Number.between(from: 2, to: 10) }
    status_id { Faker::Number.between(from: 2, to: 7) }
    trading_price_id { Faker::Number.between(from: 2, to: 3) }
    trading_area_id { Faker::Number.between(from: 2, to: 48) }
    trading_day_id { Faker::Number.between(from: 2, to: 4) }
    
    association :user
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.jpeg'), filename: 'test_image.jpeg')
    end
  end
end
