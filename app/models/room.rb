class Room < ApplicationRecord
  has_one :station, dependent: :destroy, inverse_of: :room
  accepts_nested_attributes_for :station ,allow_destroy: true
end
