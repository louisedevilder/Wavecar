class Cowave < ApplicationRecord
  has_many :cars, dependent: :destroy
  has_many :bookings, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
end
