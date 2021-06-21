class AddAncestryToCourses < ActiveRecord::Migration[6.1]
  def change
    add_column :courses, :ancestry, :string
    add_index :courses, :ancestry
  end
end
