class CartsController < ApplicationController
  before_action :authenticate_user!
  def show
      @cart_items = CartItem.where(cart_id: params[:id])
      @total = 0.00
      @count = 0
      @cart_items.each do |cart_item|
      @total = cart_item.item.price + @total
      @count += 1
    end
    end
  end
