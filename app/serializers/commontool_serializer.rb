class CommontoolSerializer < ActiveModel::Serializer
  attributes :id, :slno , :name ,:status , :issuedate , :returndate , :location
  belongs_to :employee
end
