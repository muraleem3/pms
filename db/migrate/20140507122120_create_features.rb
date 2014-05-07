class CreateFeatures < ActiveRecord::Migration
  def change
    create_table :features do |t|
      t.integer :property_id
      t.string :property_type
      t.string :property_type_code
      t.integer :property_bhk
      t.integer :property_floors
      t.string :property_facing
      t.integer :property_carparking
      t.string :property_parking_area
      t.string :property_swimpool
      t.string :property_events
      t.string :property_libroom
      t.string :property_spa
      t.string :property_fitcenter
      t.string :property_trans

      t.timestamps
    end
  end
end
