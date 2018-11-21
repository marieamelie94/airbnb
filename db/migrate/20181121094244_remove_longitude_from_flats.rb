class RemoveLongitudeFromFlats < ActiveRecord::Migration[5.2]
  def change
    remove_column :flats, :longitude, :integer
  end
end
