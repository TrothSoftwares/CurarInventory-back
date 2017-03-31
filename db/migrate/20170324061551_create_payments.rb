class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.references :customer , index: true, foreign_key: true
      t.decimal :amount ,  :precision => 8, :scale => 2
      t.timestamps
    end
  end
end
