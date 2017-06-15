class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :rider
  belongs_to :cowave
end
