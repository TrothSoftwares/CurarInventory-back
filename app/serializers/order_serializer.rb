class OrderSerializer < ActiveModel::Serializer
  attributes :id ,:duedate ,:totalunits ,:totalcost , :orderstatus , :mrf , :location , :natureofwork , :issuancedate
  belongs_to :customer
  belongs_to :supplier
  belongs_to :employee
  has_many :orderitems
  has_many :stockadjustments
end
