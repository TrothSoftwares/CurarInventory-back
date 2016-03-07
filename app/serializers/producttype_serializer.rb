class ProducttypeSerializer < ActiveModel::Serializer
  attributes :id , :producttype

  has_many :products
end
