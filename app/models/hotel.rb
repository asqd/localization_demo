class Hotel < ApplicationRecord
  translates :name, :short_info, :hotel_info

  has_many :rooms, class_name: 'HotelRoom'
  accepts_nested_attributes_for :translations
end
