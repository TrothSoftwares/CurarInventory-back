class ProductSerializer < ActiveModel::Serializer
  attributes :id, :productname ,:initialstocklevel , :initialcostprice ,:buyprice ,:retailprice
end
