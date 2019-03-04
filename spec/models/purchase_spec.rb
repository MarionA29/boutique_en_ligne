require 'rails_helper'

RSpec.describe Purchase, type: :model do

@purchase = FactoryBot.create(:purchase)

it "has a valid factory" do
  expect(build(:purchase)).to be_valid
end

context "associations" do
  it { expect(@purchase).to belong_to(:items)}
  it { expect(@purchase).to belong_to(:users)}
  end

end
