FactoryGirl.define do

  category_titles = ['Air',
                     'Land',
                     'Sea']

  sequence :category_title, category_titles.cycle do |n|
    "#{n}"
  end

  factory :category do
    title { generate(:category_title) }
  end

end