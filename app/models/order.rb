class Order < ApplicationRecord
  belongs_to :customer
  has_many :orderitems , :dependent => :destroy
  has_many :stockadjustments , :dependent => :destroy
  
end
