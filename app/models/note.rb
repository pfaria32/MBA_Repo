class Note < ApplicationRecord
  belongs_to :lecture
  has_one_attached :upload
  validates :upload, presence: true
  validates :title, presence: true
end
