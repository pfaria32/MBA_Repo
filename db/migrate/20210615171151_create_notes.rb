class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.references :course, null: false, foreign_key: true
      t.text "content"
      t.text "content_url"
      t.timestamps
    end
  end
end
