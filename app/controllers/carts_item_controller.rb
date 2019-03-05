class CartsItemController < ApplicationController
  def new
    @cart = Cart.new
  end
  def show
@cart = Cart.where(user_id: current_user.id)
  end
  def create

  end
end
