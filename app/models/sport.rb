class Sport < ApplicationRecord
  has_many :waves
  validates :name, presence: true
end
