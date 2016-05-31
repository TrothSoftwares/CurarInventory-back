class CommontoolissuanceSerializer < ActiveModel::Serializer
  attributes :id,:status , :issuedate , :returndate , :location
  belongs_to :commontool
  belongs_to :employee
end
