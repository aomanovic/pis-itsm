class User < ActiveRecord::Base
  before_save { self.email = email.downcase, self.username = username.downcase }
  validates :name, presence: true, length: {maximum: 50}
  validates :username, presence: true, length: {maximum: 20},uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, length: { minimum: 6 }
end