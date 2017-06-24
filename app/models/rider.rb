class Rider < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :cars, through: :bookings
  validates :name, presence: true
  validates :description, presence: true
end
