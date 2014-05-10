class Property < ActiveRecord::Base
	validates :property_image_path, :presence => true
  belongs_to :properties
  #validates :imagename, :presence => true
  mount_uploader :property_image_path,  AvatarUploader
  scope :search, lambda { |id| where(:id => id)}
end
