class PurchaseorderSerializer < ActiveModel::Serializer
  attributes :id ,:duedate ,:recieveddate ,:totalunits ,:totalcost , :postatus , :invoiceno
  belongs_to :supplier
  has_many :purchaseorderitems
end
