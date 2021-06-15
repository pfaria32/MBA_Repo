class Course < ApplicationRecord
  has_many :notes
  has_many :class_materials
  has_many :readings
end
