class Hotel < ApplicationRecord
  has_many :rooms, class_name: 'HotelRoom'
end
