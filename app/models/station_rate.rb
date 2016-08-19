class StationRate < ApplicationRecord
  validates :station_id, :rate, presence: true
  validates :rate, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }
  validates :station_id, uniqueness: true
end
