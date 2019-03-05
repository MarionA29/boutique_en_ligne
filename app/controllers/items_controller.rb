class ItemsController < ApplicationController
  def index
    @items = Item.all
    @user = User.find(current_user.id)
    @cart = Cart.where(user_id: @user.id)
    @cart_item = CartItem.where(cart_id: @cart.ids)
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
  end

  def new
  end
end
