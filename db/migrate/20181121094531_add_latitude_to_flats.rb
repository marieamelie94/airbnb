class AddLatitudeToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :latitude, :float
  end
end
