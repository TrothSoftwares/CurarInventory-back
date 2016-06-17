class CreateOrderitems < ActiveRecord::Migration[5.0]
  def change
    create_table :orderitems do |t|
      t.references :product , index: true, foreign_key: true
      t.integer :quantity
      t.integer :total
      t.string :orderitemstatus
      t.references :order , index: true, foreign_key: true
      t.timestamps
    end
  end
end
