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
		if ownership_history.save
			flash[:success] = "Your ownership history has been created."
			redirect_to '/owned_pets/new'
		else
			flash[:warning] = "Check that all fields are filled in."
			render 'new.html.erb'
		end	
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
			redirect_to "owned_pets/new"
		else
			render 'edit.html.erb'	
		end	
		
	end

	def destroy
		
	end
end
