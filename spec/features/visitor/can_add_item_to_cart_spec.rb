require 'rails_helper'

RSpec.describe 'add item to cart', type: :feature do
  scenario "not logged in with an empty cart" do
    item = create(:item)

    visit items_path
    click_on "Add to Cart"
    expect(current_path).to eq(items_path)
    click_on "Add to Cart"

    click_link "Cart"

    expect(current_path).to eq('/cart')

    within('.title') do
      expect(page).to have_content(item.title)
    end

    within('.quantity') do
      expect(page).to have_content("2")
    end

    within('.description') do
      expect(page).to have_content(item.description)
    end
    expect(page).to have_css(item.image_path)
  end
end
