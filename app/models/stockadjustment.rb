class Stockadjustment < ApplicationRecord
  belongs_to :customer
  has_many :stockadjustmentitems , :dependent => :destroy
end
