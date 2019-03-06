class CartsController < ApplicationController
  def show
    @cart_items = CartItem.where(cart_id: params[:id])
    @total = 0.00
    @cart_items.each do |cart_item|
      @total = cart_item.item.price + @total
    end
    end
  end
