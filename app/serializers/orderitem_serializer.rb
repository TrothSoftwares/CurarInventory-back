class OrderitemSerializer < ActiveModel::Serializer
  attributes :id , :product ,:quantity ,:total ,:orderitemstatus
  belongs_to :order
  belongs_to :product
end
