class Item < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: {in: 3..6 }
  validates :description, presence: true, length: {in: 10..200}
  validates :price, numericality: {greater_than: 1}
  has_many :purchases, dependent: :destroy
  has_many :users, through: :purchases
  has_one_attached :picture
end
