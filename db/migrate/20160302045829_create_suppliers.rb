class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :companyname
      t.string :email
      t.string :address1
      t.string :address2
      t.string :suburb
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.string :phone 
      t.timestamps
    end
  end
end
