class CreateClassMaterials < ActiveRecord::Migration[6.1]
  def change
    create_table :class_materials do |t|

      t.timestamps
    end
  end
end
