class Cart
  attr_reader :data

  def initialize(data = {})
    @data = data || Hash.new
  end

  def items
    @data.map do |item_id, quantity|
      item = Item.find(item_id)
      CartItem.new(item, quantity)
    end
  end

  def add_item(item)
    data[item.id.to_s] ||= 0
    data[item.id.to_s] += 1
  end

  def remove_item(item_id)
    data.delete(item_id)
  end

  def update_quantity(cart_params)
    data[cart_params[:cart_item_id]] = cart_params[:quantity].to_i
  end

  def total
    return 0 if items.empty?
    items.inject(0) do |sum, cart_item|
      sum + (cart_item.quantity * cart_item.price)
    end
  end
end
