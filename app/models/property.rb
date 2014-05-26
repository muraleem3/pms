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
  mount_uploader :avatar,  AvatarUploader
  scope :search, lambda { |id| where(:id => id) }

  scope :by_location, -> { where property_location: '2' }

  scope :type_codes, lambda{|order_type,filter_by_loc,filter_by_type,filter_by_type_code| where("order_type= ? and property_location= ? and property_type =? and property_type_code=? ",order_type,filter_by_loc,filter_by_type,filter_by_type_code)}

  scope :get_buy_requests,lambda{|a| where("order_type= ? ",a)}
  scope :property_get_buy_requests,lambda{|mc,a,b| where("order_type= ? and property_location= ? or property_type_code= ?",mc,a,b)}

  scope :get_sell_requests,lambda{|a| where("order_type= ? ",a)}
  scope :property_get_sell_requests,lambda{|mc,a,b| where("order_type= ? and property_location= ? or property_type_code= ?",mc,a,b)}


  scope :buyers, lambda {where(:order_type => 'buy')}
  scope :sellers, lambda {where(:order_type => 'sell')}
  scope :belongs_to_location,lambda{|property_location| where(:property_location => property_location) }
  scope :belongs_to_locality,lambda{|property_locality| where(:property_locality => property_locality) }
  scope :by_price, lambda {|min,max|{ :conditions => { :price_with_discount => property_min_price.to_f..property_max_price.to_f }}}

  
  # validates_numericality_of :price, :greater_than => 0, :less_than => 10      
end
