class AddAvatarToProperties < ActiveRecord::Migration
  def change
    add_column :properties, :avatar, :string
  end
end
