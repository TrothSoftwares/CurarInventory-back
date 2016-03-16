class AddCodesToSupplier < ActiveRecord::Migration[5.0]
  def change
    add_column :suppliers, :companycode, :string  , :unique => true
    add_column :suppliers, :chargecode, :string  , :unique => true
  end
end
