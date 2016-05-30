class ToolSerializer < ActiveModel::Serializer
  attributes :id, :name, :status , :issuedate , :lostdate , :damagedate , :vendor , :invoiceno
  belongs_to :employee
end
