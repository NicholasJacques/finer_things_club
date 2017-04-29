require 'rails_helper'

RSpec.describe 'add item to cart', type: :feature do
  scenario "not logged in with an empty cart" do
    item = create(:item)

    visit items_path
    click_on "Add to Cart"
    expect(current_path).to eq(items_path)
    click_on "Add to Cart"
    save_and_open_page
    click_link "Cart"

    expect(current_path).to eq('/cart')

    within('.title') do
      expect(page).to have_content(item.title)
    end

    expect(find_field('cart_item[quantity]').value).to eq("2")

    within('.description') do
      expect(page).to have_content(item.description[0..75])
    end
    # expect(page).to have_css(item.image_path)
    within('.subtotal') do
      expect(page).to have_content(item.price * 2)
    end

    within('.cart-total') do
      expect(page).to have_content(item.price * 2)
    end
  end
end
