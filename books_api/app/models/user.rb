class User < ApplicationRecord
  has_many :books
  has_secure_password
  validates :username, presence: true
end