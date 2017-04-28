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

# As a visitor
# When I visit "/cart"
# Then I should see my item with a quantity of 1
# And when I increase the quantity
# Then my current page should be '/cart'
# And that item's quantity should reflect the increase
# And the subtotal for that item should increase
# And the total for the cart should match that increase
# And when I decrease the quantity
# Then my current page should be '/cart'
# And that item's quantity should reflect the decrease
# And the subtotal for that item should decrease
# And the total for the cart should match that decrease