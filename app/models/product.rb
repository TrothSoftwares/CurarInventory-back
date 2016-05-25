class Product < ApplicationRecord

  belongs_to :supplier
  belongs_to :producttype
  belongs_to :productbrand
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
