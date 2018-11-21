class RemoveLatitudeFromFlats < ActiveRecord::Migration[5.2]
  def change
    remove_column :flats, :latitude, :integer
  end
end
