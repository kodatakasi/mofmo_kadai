class Station < ApplicationRecord
  belongs_to :room
  validates :route1, presence: true
  validates :station1, presence: true
  validates :walking1, presence: true
end
