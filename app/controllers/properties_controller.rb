class PropertiesController < ApplicationController


	def listproperty
		
        @property = Property.new
		@property.features << Feature.new
		@properties = Property.all
	end

	def postrequirement
		@property = Property.new
	end

	def property_results
		@property = Property.new
	end

	def testpage
		@property = Property.new
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
          #format.json { render json: @exam.errors, status: :unprocessable_entity }
        end
      end
	end

	def property_params
          params.require(:property).permit(:property_type,:property_type_code,:property_location,:property_locality,:property_min_price,:property_max_price,:property_area_measure,:property_image_path,:property_title,:property_description)
    end

end
