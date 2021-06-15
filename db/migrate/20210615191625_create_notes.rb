class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.references :course, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :class_date, null: false
      t.string :title, null: false
      t.text :content
      t.string :upload_url

      t.timestamps
    end
  end
end
