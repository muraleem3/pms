class Property < ActiveRecord::Base
  has_many :features,:dependent => :destroy
  belongs_to :user

  accepts_nested_attributes_for :features
  #validates :property_title, :presence => true

  #validates :property_image_path, :presence => true
  #validates :imagename, :presence => true
  mount_uploader :property_image_path,  AvatarUploader
  scope :search, lambda { |id| where(:id => id)}
end
