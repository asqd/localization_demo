class HotelRoom < ApplicationRecord
  translates :description

  belongs_to :room_type
end
