class CreateClassMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :class_materials do |t|
      t.references :course, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :upload_url

      t.timestamps
    end
  end
end