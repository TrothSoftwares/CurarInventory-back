class CustomerSerializer < ActiveModel::Serializer
    attributes :id ,:companyname , :companycode , :chargecode , :email , :address1, :address2, :suburb ,:city , :state, :country, :zipcode, :phone,:tin,:due
    has_many :orders
    has_many :payments

end
