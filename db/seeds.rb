require 'faker'
User.destroy_all
Item.destroy_all
Purchase.destroy_all


10.times do
  User.create!(email: Faker::Internet.email, password: Faker::Space.agency)
end

7.times do
  Item.create!( title: Faker::Lorem.characters(6), description: Faker::ChuckNorris.fact, price: rand(1..1000))
end

15.times do
  Purchase.create!(user_id: rand(User.first.id..User.last.id), item_id: rand(Item.first.id..Item.last.id))
end
