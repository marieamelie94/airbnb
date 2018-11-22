class AddDefaultValueToFLats < ActiveRecord::Migration[5.2]
  def change
    change_column :flats, :wifi, :boolean, :default => false
    change_column :flats, :air_conditionning, :boolean, :default => false
    change_column :flats, :kitchen, :boolean, :default => false
  end
end
