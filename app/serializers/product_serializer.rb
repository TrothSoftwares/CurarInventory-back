class ProductSerializer < ActiveModel::Serializer
  attributes :id, :itemcode , :productname ,:initialstocklevel , :initialcostprice ,:buyprice ,:retailprice

  belongs_to :supplier , :dependent => :destroy
  belongs_to :producttype , :dependent => :destroy
  belongs_to :productbrand , :dependent => :destroy
end
