class AddDescriptionToHotelRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :hotel_rooms, :description, :text
  end
end
