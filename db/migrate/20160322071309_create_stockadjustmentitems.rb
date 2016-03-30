class CreateStockadjustmentitems < ActiveRecord::Migration[5.0]
  def change
    create_table :stockadjustmentitems do |t|
      t.references :product
      t.integer :quantity
      t.references :stockadjustment
      t.integer :total
      t.timestamps
    end
  end
end
