class Tool < ApplicationRecord
  belongs_to :employee, optional: true
end
