class StockadjustmentSerializer < ActiveModel::Serializer
  attributes :id , :reason ,:notes ,:sastatus ,:totalunits ,:totalcost
  belongs_to :customer
  belongs_to :order
  has_many :stockadjustmentitems

end
