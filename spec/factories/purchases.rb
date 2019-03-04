require 'faker'

FactoryBot.define do
  factory :purchase do

    user { FactoryBot.create(:user) }
    item { FactoryBot.create(:item) }


  end
end
