require 'rails_helper'

RSpec.describe "can visit ':category_name' and browse items for that category", type: :feature do
  scenario "can visit '/air' and view items for that category" do
    air = create(:category, title: "Air")
    land = create(:category, title: "Land")
    item_1 = create(:item, category: air)
    item_2 = create(:item, category: land)

    visit category_path(air)

    expect(current_path).to eq('/air')
    expect(page).to have_content(item_1.title)
    expect(page).to have_content(item_1.price)
    expect(page).to_not have_content(item_2.title)
  end
end
