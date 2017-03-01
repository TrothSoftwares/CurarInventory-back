class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :slno, :payroll ,:name ,:department , :workcontact , :personalcontact,:dateofjoin
  has_many :tools
  has_many :commontools
end
