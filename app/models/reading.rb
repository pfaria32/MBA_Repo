class Reading < ApplicationRecord
  belongs_to :course
  has_many_attached :uploads
end
