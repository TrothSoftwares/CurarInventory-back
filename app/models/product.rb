class Product < ApplicationRecord

  belongs_to :supplier , optional: true
  belongs_to :producttype , optional: true
  belongs_to :productbrand  ,optional: true
  has_many :purchaseorderitems  , :dependent => :restrict_with_exception
  has_many :stockadjustmentitems , :dependent => :restrict_with_exception
  has_many :orderitems , :dependent => :restrict_with_exception



  def self.search(search)
  if search
    where('productname LIKE ?', "%#{search}%")
  else
    all
  end
end


end
