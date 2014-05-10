class PropertiesController < ApplicationController
def index
@properties = Property.all
  end
def new
@property = Property.new
end
def show
end
def create
  @property = Property.new(property_params)
  if @property.save
    flash.now[:success] = I18n.t :success, :scope => [:property, :create]
    redirect_to properties_path
  else
    flash.now[:fail] = I18n.t :fail, :scope => [:property, :create]
    render "new"
  end
end
def property_params
  params.require(:property).permit(:property_image_path)
end

end
