class Wave < ApplicationRecord
  belongs_to :car
  belongs_to :sport
  validates :datetime, presence: true
  validates :departure_address, presence: true
  validates :arrival_address, presence: true
  validates :sport_type, presence: true
  geocoded_by :departure_address, :arrival_address
  after_validation :geocode, if: :address_changed?
end
