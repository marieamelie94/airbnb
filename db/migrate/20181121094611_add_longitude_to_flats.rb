class AddLongitudeToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :longitude, :float
  end
end
