class Hotel < ApplicationRecord
  belongs_to :city

  has_many :reservations
  has_many :users, through: :reservations
  has_many :room_types, through: :reservations

  has_one_attached :image
  
end
