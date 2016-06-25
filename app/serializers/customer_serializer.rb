class CustomerSerializer < ActiveModel::Serializer
    attributes :id ,:companyname , :companycode , :chargecode , :email , :address1, :address2, :suburb ,:city , :state, :country, :zipcode, :phone
    has_many :orders
end
