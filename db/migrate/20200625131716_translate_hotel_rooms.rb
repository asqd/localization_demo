class TranslateHotelRooms < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up do
        HotelRoom.create_translation_table!({
          :description => :text
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        HotelRoom.drop_translation_table! :migrate_data => true
      end
    end
  end
end
