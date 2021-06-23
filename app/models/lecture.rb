class Lecture < ApplicationRecord
  belongs_to :course
  has_many :notes
  has_many :readings
  has_many :class_materials
end
