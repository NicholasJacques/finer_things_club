require 'rails_helper'

RSpec.feature "remove item from cart" do
  scenario "as a visitor with an item with a quantity of 1 in cart" do
    item = create(:item)
    page.set_rack_session(cart: { item.id.to_s => 1 })

    visit cart_path

    click_on "Remove"
    
    expect(page).to have_content("Removed #{item.title} from cart")
    expect(current_path).to eq(cart_path)

    within('table') do
      expect(page).to_not have_content(item.title)
      expect(page).to_not have_content(item.price)
    end
  end

  scenario "as a visitor with an multiple items in cart" do
    item_1, item_2 = create_list(:item, 2)
    page.set_rack_session(cart: { item_1.id.to_s => 1, item_2.id.to_s => 2 })

    visit cart_path

    within("tr:first") do
      click_on "Remove"
    end

    expect(current_path).to eq(cart_path)
    expect(page).to have_content("Removed #{item_1.title} from cart")

    within('table') do
      expect(page).to_not have_content(item_1.title)
      expect(page).to_not have_content(item_1.price)
      expect(page).to have_content(item_2.title)
      expect(page).to have_content(item_2.price)
    end
  end
end
