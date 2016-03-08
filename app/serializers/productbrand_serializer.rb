class ProductbrandSerializer < ActiveModel::Serializer
  attributes :id , :brandname

  has_many :products
end
