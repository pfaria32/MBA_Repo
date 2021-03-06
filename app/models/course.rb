class Course < ApplicationRecord
  # has_ancestry
  has_many :notes
  has_many :readings
  has_many :class_materials
  has_one_attached :picture
  validates :name, presence: true
end
