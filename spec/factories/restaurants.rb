FactoryBot.define do
  factory :restaurant do
    name { "any store" }
    email { Faker::Internet.email }
    address { "unknown address" }
    phone_no { "9852123456" }
    table_price { 500.0 }
    category_id { 1 }
    category { create(:category) } 
  end

  factory :restaurant2, class: Restaurant do
    name { "anything" }
    email { Faker::Internet.email }
    address { "unknown address" }
    phone_no { "9852123450" }
    table_price { 500.0 }
    category_id { 2 }
    category { create(:category2) } 
  end
end