class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :short_info
      t.text :hotel_info

      t.timestamps
    end
  end
end
