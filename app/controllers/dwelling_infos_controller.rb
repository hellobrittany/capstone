class DwellingInfosController < ApplicationController
	def index
		@dwelling_infos = DwellingInfo.all? { |e|  }
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
		if dwelling_info.save
			flash[:success] = "Your dwelling information has been saved."
			redirect_to "/applications/#{application.id}"
		else
			flash[:warning] = "Check that all fields are filled in."
			render 'new.html.erb'
		end	
	end

	def show
		@dwelling_info = DwellingInfo.find(params[:id])
	end

	def edit
		@dwelling_info = DwellingInfo.find(params[:id])
	end

	def update
		dwelling_info = DwellingInfo.find(params[:id])
		dwelling_info.assign_attributes(
																			application_id: params[:application_id], 
																			has_fencing: params[:has_fencing], 
																			fence_highest_height: params[:fence_highest_height],
																			fence_lowest_height: params[:fence_lowest_height], 
																			has_gates: params[:has_gates], 
																			street_access: params[:street_access], 
																			who_has_yard_access: params[:who_has_yard_access]
																			)

		if dwelling_info.save
			flash[:success] = "Successfully Updated your Dwelling Info!"
			redirect_to "/dwelling_infos/#{dwelling_info.id}"	
		else
			render 'update.html.erb'	
		end
			
	end

	def destroy
		
	end

end
