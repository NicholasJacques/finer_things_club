require 'rails_helper'

RSpec.describe "adjust quantity of item in cart" do
  scenario "as a visitor increase quantity" do
    item = create(:item)
    page.set_rack_session(cart: { item.id.to_s => 1 })

    visit cart_path

    expect(find_field('cart_item[quantity]').value).to eq("1")

    fill_in('cart_item[quantity]', :with => '4')
    click_on "Update Cart"

    expect(current_path).to eq(cart_path)

    expect(find_field('cart_item[quantity]').value).to eq("4")

    within('.subtotal') do
      expect(page).to have_content(item.price * 4)
    end
  end
end
