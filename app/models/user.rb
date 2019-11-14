class User < ApplicationRecord
  # before_save { self.email = email.downcase! } # same as self.email.downcase, but inside the User model the 'self' keyword is optional ON THE RIGHT-HAND SIDE
  before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: true

  validates :password, presence: true, length: { minimum: 6 }

  has_secure_password
end
