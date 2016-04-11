class Stockadjustment < ApplicationRecord
  belongs_to :customer
  belongs_to :order
  has_many :stockadjustmentitems , :dependent => :destroy
end
