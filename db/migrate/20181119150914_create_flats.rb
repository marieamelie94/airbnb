class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :description
      t.integer :latitude
      t.integer :longitude
      t.string :photo
      t.references :user, foreign_key: true
      t.integer :price
      t.string :type
      t.boolean :wifi
      t.boolean :kitchen
      t.boolean :air_conditionning

      t.timestamps
    end
  end
end
