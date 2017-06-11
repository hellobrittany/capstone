class ApplicationsController < ApplicationController
	def index
		@applications = Application.all
	end

	def new
		application = Application.new(
																		dog_id: params[:dog_id], 
																		# user_id: current_user, 
																		status: params[:status]
																	)
		application.save
	end
end
