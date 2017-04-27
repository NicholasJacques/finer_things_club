require 'rails_helper'

RSpec.feature "visitor can view items", type: :feature do
  scenario "visit '/items' and see all items" do
    item_1, item_2 = create_list(:item, 2)

    visit '/items'

    expect(page).to have_content(item_1.title)
    expect(page).to have_content(item_1.price)
    # expect(page).to have_content(item_1.category.title)
    expect(page).to have_content(item_2.title)
    expect(page).to have_content(item_2.price)
    # expect(page).to have_content(item_2.category.title)
  end
end
