FactoryGirl.define do

  factory :item do
    title { Faker::Commerce.product_name }
    price { Faker::Commerce.price.to_f }
    category
    description { Faker::Hipster.sentences(2) }
  end
end
