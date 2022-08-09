FactoryBot.define do
  factory :item do
    name                  {"test"} 
    price                 {"1000"} 
    introduction          {"test"} 
    category_id           {"2"} 
    status_id             {"2"} 
    trading_price_id      {"2"} 
    trading_area_id       {"2"} 
    trading_days_id       {"2"}  
    association :user
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.jpeg'), filename: 'test_image.jpeg')
    end
  end
end
