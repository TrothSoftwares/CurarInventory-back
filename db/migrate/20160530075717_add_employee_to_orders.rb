class AddEmployeeToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :requestedby_id, :integer
    add_column :orders, :approvedby_id, :integer
  end
end
