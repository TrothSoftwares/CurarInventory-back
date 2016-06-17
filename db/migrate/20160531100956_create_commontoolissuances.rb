class CreateCommontoolissuances < ActiveRecord::Migration[5.0]
  def change
    create_table :commontoolissuances do |t|
      t.string :status
      t.date :issuedate
      t.references :employee , index: true, foreign_key: true
      t.references :commontool , index: true, foreign_key: true
      t.date :returndate
      t.string :location
      t.timestamps
    end
  end
end
