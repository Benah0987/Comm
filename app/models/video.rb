class Video < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  # Validations
  validates :title, presence: true
  validates :description, presence: true
  validates :video_url, presence: true, on: :update # Only validate on update to allow for initial creation
end
