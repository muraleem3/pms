class Property < ActiveRecord::Base
  has_many :features


  accepts_nested_attributes_for :features

  #validates :property_image_path, :presence => true
  #validates :imagename, :presence => true
  mount_uploader :avatar,  AvatarUploader
  scope :search, lambda { |id| where(:id => id)}

end
