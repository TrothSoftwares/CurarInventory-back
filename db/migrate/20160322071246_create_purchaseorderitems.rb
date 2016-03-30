class CreatePurchaseorderitems < ActiveRecord::Migration[5.0]
  def change
    create_table :purchaseorderitems do |t|
      t.references :product
      t.integer :quantity
      t.integer :total
      t.string :poitemstatus
      t.date :recieveddate
      t.references :purchaseorder
      t.timestamps
    end
  end
end
