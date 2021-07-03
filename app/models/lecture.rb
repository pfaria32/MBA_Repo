class Lecture < ApplicationRecord
  belongs_to :course
  has_many :notes
  has_many :readings
  has_many :class_materials
  validates :lecture_date, presence: true
  validates :name, presence: true
end
