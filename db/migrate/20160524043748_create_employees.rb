class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.integer :slno
      t.string :payroll
      t.string :name
      t.string :department
      t.string :workcontact
      t.string :personalcontact
      t.timestamps
    end
  end
end
