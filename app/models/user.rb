class User < ApplicationRecord
  has_secure_password
  validates :uid,             uniqueness: true
  validates :mail,            presence: true,
    uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :password_digest, presence: true

end
