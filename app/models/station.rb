class Station < ApplicationRecord
  belongs_to :room, optional: true
end
