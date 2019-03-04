require 'faker'

FactoryBot.define do
  factory :item do
    title {Faker::Lorem.characters(6)}
    description {Faker::ChuckNorris.fact}
    price {rand(1..1000)}

  end
end
