class RemoveTypeFromFlats < ActiveRecord::Migration[5.2]
  def change
    remove_column :flats, :type, :string
  end
end
