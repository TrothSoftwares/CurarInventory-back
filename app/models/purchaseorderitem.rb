class Purchaseorderitem < ApplicationRecord
  belongs_to :product
  belongs_to :purchaseorder
end
