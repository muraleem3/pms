class RemoveColumns < ActiveRecord::Migration
  def change
  	change_table :properties do |t|
  	t.remove :property_address
  	t.remove :property_name
  	t.remove :property_transaction
  	t.remove :_type
    t.remove :property_facing
  	t.remove :property_posted_by
  	t.remove :property_area_max
  	t.remove :property_bhk
    t.string :property_title
	end
  end
end
