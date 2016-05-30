class AddFieldsToTools < ActiveRecord::Migration[5.0]
  def change
    add_column :tools, :vendor, :string
    add_column :tools, :invoiceno, :string
  end
end
