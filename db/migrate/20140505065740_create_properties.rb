class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :property_id
      t.string :property_type
      t.string :property_type_code
      t.string :property_location
      t.string :property_locality
      t.string :property_status
      t.date :property_list_date
      t.date :property_sold_date
      t.string :property_owner
      t.string :property_address
      t.string :property_name
      t.string :property_description
      t.float :property_min_price
      t.float :property_max_price
      t.string :property_transaction
      t.string :_type
      t.string :property_posted_by
      t.string :property_facing
      t.float :property_area_min
      t.float :property_area_max
      t.string :property_area_measure
      t.string :property_bhk
      t.string :property_image_path
      t.string :property_other_details

      t.timestamps
    end
  end
end
