class PropertiesController < ApplicationController
	before_action :set_property, only:[:edit,:show,:update]


	def listproperty
		
        @property = Property.new
		@property.features << Feature.new
		@properties = Property.all
	end

	def postrequirement
		@property = Property.new
		@property.features << Feature.new
		@properties = Property.all
	end

	def property_results
		@property = Property.new
	end

	def testpage
		@property = Property.new
		@property.features << Feature.new
		@properties = Property.all
	end

	def show
	end

	def new
		@property = Property.new
		
	end

	def create
		@property = Property.new(property_params)

      respond_to do |format|
        if @property.save
          format.html { redirect_to @property, notice: 'Property was successfully Listed' }
          #format.json { render action: 'show', status: :created, location: @exam }
        else
          format.html { render action: 'new' }
          #property_floorsmat.json { render json: @exam.errors, status: :unprocessable_entity }
        end
      end
	end

	def edit

    end
    def index
    	@properties=Property.all
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


	def property_params	
          params.require(:property).permit(:property_type,:property_type_code,:property_location,
          	:property_locality,:property_min_price,:property_max_price,:property_area_measure,:order_type,
          	:property_image_path,:property_title,:property_description,
          	:features_attributes => [:property_bhk,:property_floors,:property_facing,
          	:property_carparking,:property_events,:property_libroom,:property_fitcenter,:property_spa])

    end
    def set_property
          @property = Property.find(params[:id])
    end

end
