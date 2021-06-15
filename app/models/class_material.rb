class ClassMaterial < ApplicationRecord
  belongs_to :course
  has_many_attached :uploads
end
