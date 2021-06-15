class CreateClassMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :class_materials do |t|
      t.references :course, null: false, foreign_key: true
      t.timestamps
    end
  end
end
