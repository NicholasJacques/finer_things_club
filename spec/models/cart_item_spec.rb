require 'rails_helper'

RSpec.describe CartItem, type: :model do
  it "returns the title of the item" do
    item = create(:item)
    cart_item = CartItem.new(item)

    expect(cart_item.title).to eq(item.title)
  end

  it "returns the quantity for an item" do
    item = create(:item)
    cart_item = CartItem.new(item, 2)

    expect(cart_item.quantity).to eq(2)
  end
end
