class Property < ActiveRecord::Base
  geocoded_by :full_address 
  before_validation :geocode
  
  has_many :features,:dependent => :destroy
  belongs_to :user
  
  accepts_nested_attributes_for :features
  #validates :property_title, :presence => true

  
  def full_address
    address_list.join(", ")
  end
  
  def address_list
    address =[]
    address << self.property_locality
    address << self.property_location
  end
  
  
  #validates :property_image_path, :presence => true
  #validates :imagename, :presence => true
  mount_uploader :avatar,  AvatarUploader
  scope :search, lambda { |id| where(:id => id) }
  
end
