class AddDontList < ActiveRecord::Migration
  def change
  	change_table :properties do |t|
  		t.string :dont_list
    end	
  end
end
