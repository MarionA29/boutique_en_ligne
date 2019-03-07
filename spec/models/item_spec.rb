require 'rails_helper'
require 'faker'

RSpec.describe Item, type: :model do

before(:each) do
@item = Item.create(title: Faker::Lorem.characters(6), description: Faker::ChuckNorris.fact, price: rand(1..1000))
end

context "validation" do
  it "is valid with valid attributes" do
    expect(@item).to be_a(Item)
  end
  describe "#title" do
    it { should validate_presence_of(:title) }
    it { should validate_uniqueness_of(:title) }
    it { should validate_length_of(:title).is_at_least(3)}
  end
  describe "#description" do
    it { should validate_presence_of(:description) }
    it { should validate_length_of(:description).is_at_least(10)}
  end
  describe "#price" do
  end
end
context "associations" do
    it { should have_many :carts}
    end


end
