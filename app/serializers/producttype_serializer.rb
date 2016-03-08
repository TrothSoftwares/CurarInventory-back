class ProducttypeSerializer < ActiveModel::Serializer
  attributes :id , :typename

  has_many :products
end
