class CreatePurchaseorders < ActiveRecord::Migration[5.0]
  def change
    create_table :purchaseorders do |t|
      t.date :duedate
      t.date :recieveddate
      t.integer :totalunits
      t.decimal :totalcost ,  :precision => 8, :scale => 2
      t.string :postatus
      t.references :supplier , index: true, foreign_key: true
      t.timestamps
    end
  end
end
