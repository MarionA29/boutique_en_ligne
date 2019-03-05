class CartsController < ApplicationController
  def show
    @cart = Cart.where(user_id: current_user.id)
  end
end
