class CreateStockadjustments < ActiveRecord::Migration[5.0]
  def change
    create_table :stockadjustments do |t|
      t.references :customer
      t.string :reason
      t.text :notes
      t.string :sastatus
      t.integer :totalunits
      t.decimal :totalcost , :precision => 8, :scale => 2
      t.references :order
      t.timestamps
    end
  end
end
