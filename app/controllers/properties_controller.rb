class PropertiesController < ApplicationController
  include PropertiesHelper
  before_action :set_property, only:[:edit,:show,:update,:destroy]

  def listproperty		
    @property = Property.new
    @property.features << Feature.new
    @properties = Property.all
    #PropertyMailer.registration_confirmation(Property.first).deliver
    #PropertyMailer.match_property.deliver
  end
  
  def postrequirement
    @property = Property.new
    @property.features << Feature.new
    @properties = Property.all    
  end
  
  def property_results
    @property = Property.new
    @property.features << Feature.new
    #@properties = Property.all
    @properties = Property.type_codes("sell",params[:filter_by_loc],params[:filter_by_type],params[:filter_by_type_code]).paginate(:page => params[:page], :per_page => 5) if params[:filter_by_type_code].present?
    # if params[:filter_by_loc,:filter_by_type,:filter_by_type_code].present?
    #@properties = Property.paginate(:page => params[:page], :per_page => 5)
  end

  def get_properties
    @property = Property.new
    @property.features << Feature.new
    @properties = Property.where(get_properties_query).paginate(:page => params[:page], :per_page => 5)
    #@properties = Property.property_get_properties("sell",params[:property][:property_location],params[:property][:property_type_code]).paginate(:page => params[:page], :per_page => 5)
    render "property_results"   
  end

  def buy_requests
    @property = Property.new
    @property.features << Feature.new
    @properties = Property.get_buy_requests("buy").paginate(:page => params[:page], :per_page => 5)
  end

  def get_buy_requests
    @property = Property.new
    @property.features << Feature.new
    @properties = Property.where(get_buy_requests_query).paginate(:page => params[:page], :per_page => 5)
    render "buy_requests"   
  end
  
  def sell_requests
    @property = Property.new
    @property.features << Feature.new
    @properties = Property.get_sell_requests("sell").paginate(:page => params[:page], :per_page => 5)
  end

  def get_sell_requests
    @property = Property.new
    @property.features << Feature.new
    @properties = Property.where(get_sell_requests_query).paginate(:page => params[:page], :per_page => 5)
    render "sell_requests"   
  end
  
  def testpage
    @property = Property.new
    @property.features << Feature.new
    @properties = Property.all
    @property = Property.find(100);
    
    @map_data = GoogleMapProcessor.build_map_data([@property])
    gon.gmap_data = @map_data.to_json
    gon.width = "800px"
    gon.height = "500px"
  end

  def testpage1
    @property = Property.new
    @property.features << Feature.new
    @properties = Property.all
    @property = Property.find(152);
    
    @map_data = GoogleMapProcessor.build_map_data([@property])
    gon.gmap_data = @map_data.to_json
    gon.width = "800px"
    gon.height = "500px"
  end
  
  def show
    #show-Action
  end
  
  def new
    @property = Property.new		
  end
  
  def create
    if !current_user.nil?
      @property = Property.new(property_params)
      @property.user_id= current_user.id
      #@property.user.username
      @property.property_owner= current_user.username
      
      respond_to do |format|
        if @property.save
          # @properties = property.where(:order_type=buy) 
          format.html { redirect_to @property, notice: 'Property was successfully Listed' }
          #format.json { render action: 'show', status: :created, location: @exam }
        else
          format.html { render action: 'new' }
          #property_floorsmat.json { render json: @exam.errors, status: :unprocessable_entity }
        end
      end 
    else
      render :template => '/devise/sessions/new' 
    end 
  end
  
  def edit
    if @property.order_type=="buy"
      render "postrequirement"
    end
    
    if @property.order_type=="sell" 
      render "listproperty"
    end  
 
  end
  
  def index
    @properties = Property.all
    
  end
  
  def update        
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        #format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url }
      format.json { head :no_content }
    end
  end
  
  def set_property
    @property = Property.find(params[:id])
  end
  
  private

  def property_params	
    params.require(:property).permit(:property_type,:property_type_code,:property_location,
                                     :property_locality,:property_min_price,:property_max_price,:property_area_min,:property_area_measure,:order_type,:property_image_path,:property_title,:property_description,:avatar,
                                     :features_attributes => [[:id,:property_bhk],:property_floors,:property_facing,
                                                              :property_carparking,:property_events,:property_libroom,:property_fitcenter,:property_spa])

  end

end
