class Car < ApplicationRecord
  belongs_to :cowave
  has_many :bookings, dependent: :destroy
  has_many :waves, dependent: :destroy
  has_many :sports, through: :waves
  validates :place, presence: true
  validates :brand, presence: true
end
