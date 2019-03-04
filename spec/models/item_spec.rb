require 'rails_helper'

RSpec.describe User, type: :model do

@item = FactoryBot.create(:item)

it "has a valid factory" do
  expect(build(:item)).to be_valid
end

context "validation" do
  it "is valid with valid attributes" do
    expect(@item).to be_a(Item)
  end
  describe "#title" do
    it { expect(@item).to validate_presence_of(:title) }
    it { expect(@item).to validate_uniqueness_of(:title) }
    it {expect(@item).to validate_length_of(:title).to_be_at_least(6)}
  end
  describe "#description" do
    it { expect(@item).to validate_presence_of(:description) }
    it { expect(@item).to validate_uniqueness_of(:description) }
    it {expect(@item).to validate_length_of(:description).to_be_at_least(10)}
  end
  describe "#price" do
  end
end
context "associations" do
    it { expect(@item).to have_many(:users)}
    it { expect(@item).to have_many(:purchases)}
    end


end
