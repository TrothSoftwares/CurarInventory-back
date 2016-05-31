class Product < ApplicationRecord

  belongs_to :supplier , optional: true
  belongs_to :producttype , optional: true
  belongs_to :productbrand  ,optional: true
  has_many :purchaseorderitems  , :dependent => :restrict_with_exception
  has_many :stockadjustmentitems , :dependent => :restrict_with_exception
  has_many :orderitems , :dependent => :restrict_with_exception



  def self.search(search)
  if search

    if Rails.env == 'production'
    where('productname ILIKE ?', "%#{search}%")
  else
    where('productname LIKE ?', "%#{search}%")
  end
  else
    all
  end
end


end
