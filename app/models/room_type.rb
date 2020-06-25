class RoomType < ApplicationRecord
  translates :name

  has_many :hotel_rooms
end
