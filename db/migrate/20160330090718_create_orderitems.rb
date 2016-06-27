class CreateOrderitems < ActiveRecord::Migration[5.0]
  def change
    create_table :orderitems do |t|
      t.references :product , index: true, foreign_key: true
      t.integer :quantity
      t.decimal :total , :precision => 8, :scale => 2
      t.string :orderitemstatus
      t.references :order , index: true, foreign_key: true
      t.timestamps
    end
  end
end
