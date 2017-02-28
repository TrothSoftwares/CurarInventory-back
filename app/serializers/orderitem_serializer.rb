class OrderitemSerializer < ActiveModel::Serializer
  attributes :id , :product , :quantity , :total , :exciseduty , :rateoftax , :tax , :nettaxablevalue , :cashdiscount , :grossvalue , :orderitemstatus,:totalvalue
  belongs_to :order
  belongs_to :product
end
