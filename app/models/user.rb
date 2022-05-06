class User < ApplicationRecord

  has_many :reservations
  has_many :rooms, through: :reservations

  require 'securerandom'

  has_secure_password

  validates :email, presence: true
  validates :password, presence: true
  validates :username, presence: true, uniqueness: true
end
