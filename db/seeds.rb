require 'faker'
User.destroy_all
Item.destroy_all
Cart.destroy_all

10.times do
  User.create!(email: Faker::Internet.email, password: Faker::Space.agency)
end

7.times do
  Item.create!( title: Faker::Creature::Cat.name, description: Faker::ChuckNorris.fact, price: rand(1..1000))
end

1.times do
  Cart.create!(user_id: rand(User.first.id..User.last.id))
end
