class PurchaseorderSerializer < ActiveModel::Serializer
  attributes :id ,:duedate ,:recieveddate ,:totalunits ,:totalcost , :postatus
  belongs_to :supplier
  has_many :purchaseorderitems
end
