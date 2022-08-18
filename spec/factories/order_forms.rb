FactoryBot.define do
  factory :order_form do
    user_id           { "test" }
    item_id           { "test" }
    post_code         { Faker::Number.decimal_part(digits: 3) + '-' + Faker::Number.decimal_part(digits: 4) }
    trading_area_id   { Faker::Number.between(from: 1, to: 47) }
    city              { Faker::Address.city }
    house_number      { Faker::Address.street_address }
    building_name     { Faker::Address.building_name }
    phone_number      { Faker::Number.decimal_part(digits: 11) }
    token             { Faker::Internet.password(min_length: 20, max_length: 30) }
  end
end

