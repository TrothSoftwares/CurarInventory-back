class PurchaseorderitemSerializer < ActiveModel::Serializer
  attributes :id , :product ,:quantity ,:total ,:poitemstatus, :recieveddate
  belongs_to :purchaseorder
  belongs_to :product
end
