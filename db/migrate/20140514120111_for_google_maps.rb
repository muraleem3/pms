class ForGoogleMaps < ActiveRecord::Migration
  def change
  	change_table :properties do |t|
  		t.string :property_address
  		t.string :latitude
  		t.string :longitude
    end
  end
end
