class PaymentSerializer < ActiveModel::Serializer
  attributes :id , :amount , :createdat
  belongs_to :customer


  def createdat
    object.created_at
  end
end
