class CreateImageuploaders < ActiveRecord::Migration
  def change
    create_table :imageuploaders do |t|
      t.string :imagename
      t.string :file_path

      t.timestamps
    end
  end
end
