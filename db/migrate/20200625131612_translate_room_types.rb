class TranslateRoomTypes < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up do
        RoomType.create_translation_table!({
          :name => :string
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        RoomType.drop_translation_table! :migrate_data => true
      end
    end
  end
end
