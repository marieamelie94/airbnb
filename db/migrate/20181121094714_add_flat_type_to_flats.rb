class AddFlatTypeToFlats < ActiveRecord::Migration[5.2]
  def change
    add_column :flats, :flat_type, :string
  end
end
