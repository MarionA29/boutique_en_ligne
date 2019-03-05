class Item < ApplicationRecord
  validates :title, presence: true, uniqueness: true, length: {in: 3..12 }
  validates :description, presence: true, length: {in: 10..200}
  validates :price, numericality: {greater_than: 1}
  has_one_attached :picture

  before_create :set_default_picture
end


def set_default_picture
  downloaded_image = (open('https://loremflickr.com/g/320/240/kitten'))
  self.picture.attach(io: downloaded_image, filename: 'image.png')
end
