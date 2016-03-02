class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :itemcode
      t.string :productname
      t.integer :initialstocklevel
      t.integer :initialcostprice
      t.integer :buyprice
      t.integer :retailprice
    end
  end
end
