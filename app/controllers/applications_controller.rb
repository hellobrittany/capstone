class ApplicationsController < ApplicationController
	def index
		@applications = Application.all
	end

	def new
		application = Application.new(
																		dog_id: params[:dog_id], 
																		user_id: current_user, 
																		status: params[:status]
																	)
		application.save
	end

	def show
		@application = Application.find(params[:id])
	end

	def edit
		@application = Application.find(params[:id])
	end

	def update
		application = Application.find(params[:id])
		application.assign_attributes(
																		dog_id: params[:dog_id], 
																		user_id: current_user, 
																		status: params[:status]
																	)

		if application.save
			flash[:success] = "Application updated!"
			redirect_to "/applications/#{application.id}"
		else
			render 'update.html.erb'
		end

	end

	def destroy
		
	end
end
