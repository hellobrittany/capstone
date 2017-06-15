class DogsController < ApplicationController
	def index
		@dogs = Dog.all
	end

	def new
		@dog = Dog.new

	end

	def create
		@dog = Dog.new(
									name: params[:name], 
									identifier: params[:identifier]
									)
		if @dog.save
			flash[:success] = "Dog Successfully Added"
			redirect_to "/dogs/#{dog.id}"
		else
			render 'new.html.erb'
		end	
	end

	def show
		@dog = Dog.find(params[:id])
	end

	def edit
		@dog = Dog.find(params[:id])
	end

	def update
		
	end

	def destroy
		
	end
end
