class PlacesController < ApplicationController
	def index
		@places = Place.all.order("name").page(params[:page]).per_page(5) 

	end
	def new
		@places =Place.new
	end

	
end
