class CreateReadings < ActiveRecord::Migration[6.1]
  def change
    create_table :readings do |t|
      t.references :course, null: false, foreign_key: true
      t.string "name", null: false
      t.string "reading_url", null: false
      t.timestamps
    end
  end
end
