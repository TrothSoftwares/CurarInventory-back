class PurchaseorderSerializer < ActiveModel::Serializer
  attributes :id ,:duedate ,:totalunits ,:totalcost , :postatus
  belongs_to :supplier
  has_many :purchaseorderitems
end
