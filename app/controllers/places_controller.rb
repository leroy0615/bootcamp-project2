class PlacesController < ApplicationController
	def index
		@places = Place.all.order("name").page(params[:page]).per_page(5) 

	end
	def new
		@places =Place.new
	end

	def create
		Place.create(place_params)
		redirect_to root_path
	end
	private
	def place_params
		params.require(:place).permit(:name, :description, :address)
	end	

	
end