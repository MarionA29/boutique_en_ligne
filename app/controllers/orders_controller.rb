class OrdersController < ApplicationController

  def show
  end
  def new
     @order = Order.new(params[:id])
     @cart_items = CartItem.where(cart_id: current_user.id)
     @total = 0.00
     @cart_items.each do |cart_item|
       @total = cart_item.item.price + @total
     end
end
  def create
    @order = Order.new
    @total = 0.00
    @cart = CartItem.find_by(cart_id: current_user.id)
    @cart.each do |cart_item|
      @total = cart_item.item.price + @total
    end

    @order = Order.new(cart_item_params, stripe_customer_id: params[:stripeToken])

    if @order.save
      flash[:success] = "Ta commande est confirmée !"
      redirect_to root_path
    else
      flash[:error] = "Ta commande n'a pas pu être confirmée ! Merde alors :("
      render root_path
    end

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @total,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
  def cart_item_params
    params.permit(:item_id, :cart_id)
  end
end
