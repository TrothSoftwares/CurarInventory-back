class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.integer :slno
      t.string :payroll
      t.string :name
      t.string :address
      t.string :bloodgroup
      t.string :designation
      t.string :dateofjoin
      t.string :department
      t.string :workcontact
      t.string :personalcontact
      t.date :dateofjoin
      t.timestamps
    end
  end
end
