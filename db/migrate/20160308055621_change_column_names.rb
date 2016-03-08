class ChangeColumnNames < ActiveRecord::Migration[5.0]
  def change
   rename_column :producttypes, :producttype, :typename
   rename_column :productbrands, :productbrand, :brandname
  end
end
