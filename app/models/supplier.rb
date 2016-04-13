class Supplier < ApplicationRecord
  validates :companycode, uniqueness: { message: 'A Supplier with this company code exists' }
  validates :chargecode, uniqueness: { message: 'A Supplier with this charge code exists' }

  has_many :products
end
