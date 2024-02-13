class Video < ApplicationRecord
  belongs_to :user
  has_many :comments

  # validations 
  validates :title, presence: true
  validates :description, presence: true
end