require 'rails_helper'

RSpec.describe Order, type: :model do
  before(:each) do
    @user = User.create(email: Faker::Internet.email, password: Faker::Space.agency)
    @cart = Cart.create(user_id: @user.id)
    @order = Order.create(user_id: @user.id, cart_id: @cart.id)
  end

context "callback" do
 it { is_expected.to callback(:order_email).after(:create) }
end

end
