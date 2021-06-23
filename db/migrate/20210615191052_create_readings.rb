class CreateReadings < ActiveRecord::Migration[6.1]
  def change
    create_table :readings do |t|
      t.references :lecture, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :class_date, null: false
      t.string :name
      t.string :upload_url

      t.timestamps
    end
  end
end
