class ToolSerializer < ActiveModel::Serializer
  attributes :id, :name, :status , :issuedate , :lostdate , :damagedate
  belongs_to :employee
end
