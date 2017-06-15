class Car < ApplicationRecord
  belongs_to :cowave
  has_many :bookings
  has_many :waves
end
