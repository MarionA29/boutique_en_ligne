class CartItemsController < ApplicationController
  def new
  @cart_item = CartItem.new
end

def create
  @cart = Cart.find_by(user_id: current_user.id)
  @cart_item = CartItem.create(cart_item_params)
    redirect_to user_cart_path(@cart.id,@cart.id)
end

def destroy
  @cart = Cart.find_by(user_id: current_user.id)
  @item = CartItem.where(item_id: params[:id]).first
  @item.destroy
  redirect_to user_cart_path(@cart.id, @cart.id )
end
def cart_item_params
  params.permit(:item_id, :cart_id)
end
end
