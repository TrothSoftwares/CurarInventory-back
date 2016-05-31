class CreateCommontoolissuances < ActiveRecord::Migration[5.0]
  def change
    create_table :commontoolissuances do |t|
      t.string :status
      t.date :issuedate
      t.references :employee
      t.references :commontool
      t.date :returndate
      t.string :location
      t.timestamps
    end
  end
end
