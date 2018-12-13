class User < ApplicationRecord
  has_secure_password
  has_many :journals
  has_many :entries, through: :journals

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
end
