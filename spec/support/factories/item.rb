FactoryGirl.define do

  factory :item do
    title { Faker::Commerce.product_name }
    price { Faker::Commerce.price.to_f }
    category
  end
end