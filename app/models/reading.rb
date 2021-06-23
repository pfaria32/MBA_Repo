class Reading < ApplicationRecord
  belongs_to :lecture
  has_one_attached :upload
end
