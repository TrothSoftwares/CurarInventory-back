class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.date :duedate
      t.integer :totalunits
      t.decimal :totalcost , :precision => 8, :scale => 2
      t.string :orderstatus
      t.references :customer , index: true, foreign_key: true
      t.timestamps
    end
  end
end
