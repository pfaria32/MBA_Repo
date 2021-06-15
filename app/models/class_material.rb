class ClassMaterial < ApplicationRecord
  belongs_to :course
  has_one_attached :upload
end
