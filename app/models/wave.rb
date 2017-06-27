class Wave < ApplicationRecord
  belongs_to :car
  belongs_to :sport
  validates :datetime, presence: true
  validates :departure_address, presence: true
  validates :arrival_address, presence: true
  validates :sport, presence: true
  geocoded_by :departure_address
  after_validation :geocode
end
