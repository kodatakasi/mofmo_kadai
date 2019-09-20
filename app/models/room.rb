class Room < ApplicationRecord
  has_one :station, dependent: :destroy, inverse_of: :room
  accepts_nested_attributes_for :station ,allow_destroy: true
  validates :name, presence: true
  validates :price, presence: true
  validates :age, presence: true
  validates :address, presence: true
end
