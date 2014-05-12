class AddUserIdAndOrderType < ActiveRecord::Migration
  def change
  	change_table :properties do |t|
  		t.string :user_id
  		t.string :order_type
    end
  end
end
