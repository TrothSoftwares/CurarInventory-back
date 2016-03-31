class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.date :duedate
      t.integer :totalunits
      t.integer :totalcost
      t.string :orderstatus
      t.references :customer
      t.timestamps
    end
  end
end
