class Purchaseorder < ApplicationRecord
  belongs_to :supplier
  has_many :purchaseorderitems , :dependent => :destroy
end
