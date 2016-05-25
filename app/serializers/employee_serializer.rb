class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :slno, :payroll ,:name ,:department , :workcontact , :personalcontact
end
