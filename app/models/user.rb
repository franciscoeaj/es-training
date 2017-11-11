class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

	has_secure_password

  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: true, presence: true
end
