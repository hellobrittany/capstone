class OwnershipHistoriesController < ApplicationController
	def index
		@ownership_histories = OwnershipHistory.all
	end

	def new
		@ownership_history = OwnershipHistory.new
	end

	def create
		ownership_history = OwnershipHistory.new(
																							application_id: params[:application_id], 
																							number_of_current_pets: params[:number_of_current_pets], 
																							allowed_breeding: params[:allowed_breeding],
																							)
		ownership_history.save
	end

	def show
		@ownership_history = OwnershipHistory.find(params[:id])
	end

	def edit
		@ownership_history = OwnershipHistory.find(params[:id])
		
	end

	def update
		ownership_history = OwnershipHistory.find(params[:id])
		ownership_history.assign_attributes(
																							application_id: params[:application_id], 
																							number_of_current_pets: params[:number_of_current_pets], 
																							allowed_breeding: params[:allowed_breeding],
																							)

		if ownership_history.save
			flash[:success] = "Your Ownership History has been updated!"
			redirect_to "/ownership_histories/#{ownership_history.id}"
		else
			render 'update.html.erb'	
		end	
		
	end

	def destroy
		
	end
end
