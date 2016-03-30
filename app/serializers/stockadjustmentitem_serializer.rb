class StockadjustmentitemSerializer < ActiveModel::Serializer
  attributes :id , :product , :quantity  ,:total
  belongs_to :stockadjustment
  belongs_to :product

end
