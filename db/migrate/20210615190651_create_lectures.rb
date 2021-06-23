class CreateLectures < ActiveRecord::Migration[6.1]
  def change
    create_table :lectures do |t|
      t.references :course, null: false, foreign_key: true
      t.date :lecture_date, null: false
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
