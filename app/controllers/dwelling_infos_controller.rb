class DwellingInfosController < ApplicationController
	def index
		@dwelling_infos = Dwelling_info.all? { |e|  }
	end

	def new
		@dwelling_info = DwellingInfo.new
	end

	def create
		dwelling_info = DwellingInfo.new(
																			application_id: params[:application_id], 
																			has_fencing: params[:has_fencing], 
																			fence_highest_height: params[:fence_highest_height],
																			fence_lowest_height: params[:fence_lowest_height], 
																			has_gates: params[:has_gates], 
																			street_access: params[:street_access], 
																			who_has_yard_access: params[:who_has_yard_access]
																			)
	end

	def show
		@dwelling_info = Dwelling_info.find(params[:id])
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

end
