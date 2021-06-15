class Course < ApplicationRecord
  has_many :notes, :readings, :class_materials
  has_one_attached :picture
end
