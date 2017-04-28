class CartItemsController < ApplicationController
  def create
    item = Item.find(params[:item_id])
    cart.add_item(item)
    session[:cart] = cart.data
    flash[:success] = "Added #{item.title} to cart."
    redirect_to request.referrer
  end

  def index
    @cart_items = cart.items
  end

  def update
    cart.update_quantity(params[:cart_item])
    redirect_to request.referrer
  end

  def destroy
    cart.remove_item(params[:id])
    item = Item.find(params[:id])
    session[:cart] = cart.data
    flash[:success] = "Removed #{item.title} from cart"
    redirect_to request.referrer
  end
end
