class ProductSerializer < ActiveModel::Serializer
  attributes :id, :itemcode , :productname ,:initialstocklevel , :initialcostprice ,:buyprice ,:retailprice

  belongs_to :supplier , :dependent => :destroy
  belongs_to :producttype , :dependent => :destroy
  belongs_to :productbrand , :dependent => :destroy
  has_many :purchaseorderitems
  has_many :stockadjustmentitems
  has_many :orderitems 

end
