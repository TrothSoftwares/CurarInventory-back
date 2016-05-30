class Employee < ApplicationRecord
  has_many :tools
  has_many :commontools
end
