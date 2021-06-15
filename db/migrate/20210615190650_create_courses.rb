class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :professor
      t.string :code
      t.references :user, null: false, foreign_key: true
      t.string :picture_url

      t.timestamps
    end
  end
end
