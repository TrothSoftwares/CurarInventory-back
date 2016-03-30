class Stockadjustmentitem < ApplicationRecord
  belongs_to :product
  belongs_to :stockadjustment
end
