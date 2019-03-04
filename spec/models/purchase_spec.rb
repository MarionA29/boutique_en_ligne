require 'rails_helper'

RSpec.describe Purchase, type: :model do

  before(:each) do
  @category = Category.create(name: Faker::Lorem.characters(6))
  @user = User.create(email: Faker::Internet.email, password: Faker::Space.agency)
  @item = Item.create(title: Faker::Lorem.characters(6), description: Faker::ChuckNorris.fact, price: rand(1..1000), category_id: @category.id)
  @purchase = Purchase.create(user_id: @user.id, item_id: @item.id)

  end


context "associations" do
  it { should belong_to(:item)}
  it { should belong_to(:user)}
  end

end
