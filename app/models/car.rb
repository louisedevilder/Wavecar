class Car < ApplicationRecord
  belongs_to :cowave
  has_many :bookings, dependent: :destroy
  has_many :waves, dependent: :destroy
  validates :place, presence: true
  validates :brand, presence: true
end
