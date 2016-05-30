class Order < ApplicationRecord
  belongs_to :customer, optional: true
  belongs_to :supplier, optional: true
  belongs_to :employee, optional: true
  has_many :orderitems , :dependent => :destroy
  has_many :stockadjustments , :dependent => :destroy
  belongs_to :requestedby, :class_name => "Employee"  ,optional: true
  belongs_to :approvedby, :class_name => "Employee" ,optional: true

end
