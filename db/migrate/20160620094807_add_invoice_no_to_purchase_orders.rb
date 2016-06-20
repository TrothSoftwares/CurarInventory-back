class AddInvoiceNoToPurchaseOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :purchaseorders, :invoiceno, :string 
  end
end
