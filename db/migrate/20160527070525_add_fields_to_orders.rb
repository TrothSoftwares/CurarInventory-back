class AddFieldsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :mrf, :string
    add_column :orders, :location, :string
    add_column :orders, :natureofwork, :string
    add_reference :orders, :supplier, index: true, foreign_key: true
    add_reference :orders, :employee, index: true, foreign_key: true
    add_column :orders, :issuancedate, :date 
  end
end
