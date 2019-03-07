class Cart < ApplicationRecord
  belongs_to :user, required: true
  has_many :cart_items
  has_many :items, through: :cart_items
end
