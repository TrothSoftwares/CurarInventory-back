class CreateStockadjustmentitems < ActiveRecord::Migration[5.0]
  def change
    create_table :stockadjustmentitems do |t|
      t.references :product , index: true, foreign_key: true
      t.integer :quantity
      t.references :stockadjustment , index: true, foreign_key: true
      t.integer :total
      t.timestamps
    end
  end
end
