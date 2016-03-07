class ProductbrandSerializer < ActiveModel::Serializer
  attributes :id , :productbrand

  has_many :products
end
