class CommontoolSerializer < ActiveModel::Serializer
  attributes :id, :slno , :name ,:status , :issuedate , :returndate , :location
  has_many :commontoolissuances
end
