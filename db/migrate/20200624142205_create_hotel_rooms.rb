class CreateHotelRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :hotel_rooms do |t|
      t.integer :hotel_id
      t.integer :room_type_id
      t.integer :area

      t.timestamps
    end
  end
end
