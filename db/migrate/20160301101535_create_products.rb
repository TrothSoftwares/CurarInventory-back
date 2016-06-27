class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :itemcode
      t.string :productname
      t.integer :initialstocklevel
      t.decimal :initialcostprice ,  :precision => 8, :scale => 2
      t.decimal :buyprice , :precision => 8, :scale => 2
      t.decimal :retailprice , :precision => 8, :scale => 2
    end
  end
end
