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
		if owned_pet.save
			flash[:success] = "Your pet has been saved."
			redirect_to '/ownership_profiles/new'
		else
			flash[:warning] = "Check that all fields are filled in."
			render 'new.html.erb'
		end	
	end

	def show
		@owned_pet = OwnedPet.find(params[:id])
	end

	def edit
		@owned_pet = OwnedPet.find(params[:id])
	end

	def update
		owned_pet = OwnedPet.find(params[:id])
		owned_pet.assign_attributes(
															ownership_history_id: params[:ownership_history_id], 
															species: params[:species], 
															breed: params[:breed], 
															current: params[:current], 
															length_of_ownership: params[:length_of_ownership], 
															explanation: params[:explanation]
															)

		if owned_pet.save
			flash[:success] = "Your Pet has been updated!"
			redirect_to "/owned_pets/#{owned_pet.id}"
		else
			render 'update.html.erb'	
		end	
		
	end

	def destroy
		
	end
end
