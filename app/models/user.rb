class User < ApplicationRecord
    has_many :videos
    has_many :comments
    

    # validations 
    has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true, length: { minimum: 6 }
  end
  