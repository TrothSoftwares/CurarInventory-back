class OrderSerializer < ActiveModel::Serializer
  attributes :id ,:duedate ,:totalunits ,:totalcost , :orderstatus
  belongs_to :customer
  has_many :orderitems
end
