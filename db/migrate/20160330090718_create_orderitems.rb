class CreateOrderitems < ActiveRecord::Migration[5.0]
  def change
    create_table :orderitems do |t|
      t.references :product
      t.integer :quantity
      t.integer :total
      t.string :orderitemstatus
      t.references :order
      t.timestamps
    end
  end
end
