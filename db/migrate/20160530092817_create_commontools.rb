class CreateCommontools < ActiveRecord::Migration[5.0]
  def change
    create_table :commontools do |t|
      t.string :slno
      t.string :name
      t.string :status
      t.date :issuedate
      t.references :employee
      t.date :returndate
      t.string :location
      t.timestamps
    end
  end
end
