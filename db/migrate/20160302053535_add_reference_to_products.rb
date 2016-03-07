class AddReferenceToProducts < ActiveRecord::Migration[5.0]
  def change
    add_reference :products, :supplier, index: true, foreign_key: true
    add_reference :products, :producttype, index: true, foreign_key: true
    add_reference :products, :productbrand, index: true, foreign_key: true
  end
end
