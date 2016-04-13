class Producttype < ApplicationRecord
  validates :typename, uniqueness: { message: 'A product type of same type exist' }
  has_many :products
end
