class Product < ApplicationRecord
  belongs_to :supplier
  belongs_to :producttype
  belongs_to :productbrand  
end
