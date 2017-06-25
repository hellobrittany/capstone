class DogsController < ApplicationController
	def index
		@dogs = Dog.all
		
		dog_id = params[:id]
		search_term = params[:search_term]

		if dog_id
			@dogs = Application.find(dog_id)
		end

		if search_term
			@dogs = @dogs.where(
													"name iLIKE ? OR description iLIKE ?", 
                          "%#{search_term}%",
                          "%#{search_term}%"
                         )
		end	
			
	end

	def new
		@dog = Dog.new

	end

	def create
		dog = Dog.new(
									name: params[:name], 
									identifier: params[:identifier]
									)
		dog.save
			
		
	end

	def show
		@dog = Dog.find(params[:id])
	end

	def edit
		@dog = Dog.find(params[:id])
	end

	def update
		dog = Dog.find(params[:id]) 
		dog.assign_attributes(
													name: params[:name], 
													identifier: params[:identifier]
													)

		if dog.save
			flash[:success] = "Successfully added new dog!"
			render "/dogs/#{dog.id}"
		else
			render 'update.html.erb'	
		end	
	end

	def destroy
		
	end
end
