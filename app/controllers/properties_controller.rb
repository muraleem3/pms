class PropertiesController < ApplicationController


	def listproperty
		@property = Property.new
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

	def create
	end

end
