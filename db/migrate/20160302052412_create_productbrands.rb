class CreateProductbrands < ActiveRecord::Migration[5.0]
  def change
    create_table :productbrands do |t|
      t.string :productbrand
      t.timestamps
    end
  end
end
