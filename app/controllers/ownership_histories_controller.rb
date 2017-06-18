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
	end

	def show
		@ownership_history = OwnershipHistory.find(params[:id])
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end
end
