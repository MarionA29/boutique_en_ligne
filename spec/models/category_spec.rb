require 'rails_helper'
require 'faker'

RSpec.describe Category, type: :model do

before(:each) do
@category = Category.create(name: Faker::Lorem.characters(6))
@item = Item.create(title: Faker::Lorem.characters(6), description: Faker::ChuckNorris.fact, price: rand(1..1000), category_id: @category.id)
end

context "associations" do
  it { should have_many :items}

end

end
