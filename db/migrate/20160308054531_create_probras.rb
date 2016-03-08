class CreateProbras < ActiveRecord::Migration[5.0]
  def change
    create_table :probras do |t|
      t.string :prr
      t.timestamps
    end
  end
end
