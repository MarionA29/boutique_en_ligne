require 'faker'

FactoryBot.define do
  factory :user do
  email { Faker::Internet.email  }
  password { Faker::Space.agency }

  end
end
