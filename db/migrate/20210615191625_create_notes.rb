class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.references :course, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :content
      t.string :upload_url

      t.timestamps
    end
  end
end
