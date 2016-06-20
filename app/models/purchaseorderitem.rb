class Purchaseorderitem < ApplicationRecord
  belongs_to :product ,  optional: true
  belongs_to :purchaseorder
end
