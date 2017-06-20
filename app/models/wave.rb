class Wave < ApplicationRecord
  belongs_to :car
  validates :date, presence: true
  validates :departure_time, presence: true
  validates :departure_address, presence: true
  validates :arrival_address, presence: true
  validates :sport_type, presence: true
end
