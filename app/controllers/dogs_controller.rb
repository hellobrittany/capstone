class DogsController < ApplicationController
	def index
		@dogs = Dog.all
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
