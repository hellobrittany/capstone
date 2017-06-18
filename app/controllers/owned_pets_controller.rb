class OwnedPetsController < ApplicationController
	def index
		@owned_pets = OwnedPet.all
	end

	def new
		@owned_pet = OwnedPet.new
	end

	def create
		owned_pet = OwnedPet.new(
															ownership_history_id: params[:ownership_history_id], 
															species: params[:species], 
															breed: params[:breed], 
															current: params[:current], 
															length_of_ownership: params[:length_of_ownership], 
															explanation: params[:explanation]
															)
		owned_pet.save
	end

	def show
		
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end
end
