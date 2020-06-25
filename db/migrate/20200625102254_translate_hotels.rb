class TranslateHotels < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir|
      dir.up do
        Hotel.create_translation_table!({
          :name => :string,
          :short_info => :text,
          :hotel_info => :text
        }, {
          :migrate_data => true
        })
      end

      dir.down do
        Hotel.drop_translation_table! :migrate_data => true
      end
    end
  end
end
