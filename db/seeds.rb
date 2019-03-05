require 'faker'
User.destroy_all
Item.destroy_all


10.times do
  User.create!(email: Faker::Internet.email, password: Faker::Space.agency)
end

7.times do
  Item.create!( title: Faker::Lorem.characters(6), description: Faker::ChuckNorris.fact, price: rand(1..1000))
end
