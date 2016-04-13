class Product < ApplicationRecord
  validates :itemcode, uniqueness: { message: 'A product with same itemcode exist'}
  belongs_to :supplier
  belongs_to :producttype
  belongs_to :productbrand
  has_many :purchaseorderitems
  has_many :stockadjustmentitems
end
