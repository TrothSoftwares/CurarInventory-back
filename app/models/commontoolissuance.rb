class Commontoolissuance < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :commontool, optional: true
end
