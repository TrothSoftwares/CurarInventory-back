class OrderSerializer < ActiveModel::Serializer
  attributes :id ,:duedate ,:totalunits ,:totalcost , :orderstatus , :mrf , :location , :natureofwork , :issuancedate , :roundoff ,:chargableamount
  belongs_to :customer
  belongs_to :supplier
  belongs_to :employee
  belongs_to :requestedby
  belongs_to :approvedby
  has_many :orderitems
  has_many :stockadjustments

end
