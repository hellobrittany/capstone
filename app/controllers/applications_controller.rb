class ApplicationsController < ApplicationController
	def index
		@applications = Application.all

		search_term = params[:search_term]
		sort_attribute = params[:sort]
    sort_order = params[:sort_order]

		if search_term
			@applications = @applications.where(
													"name iLIKE ? OR description iLIKE ?", 
                          "%#{search_term}%",
                          "%#{search_term}%"
                         )
		end	

		if sort_attribute && sort_order
       @applications = @applications.order(sort_attribute => sort_order)
    elsif sort_attribute
       @applications = @applications.order(sort_attribute)
    end

   render "/lifestyle_infos/show.html.erb"
   # render 'ownership_histories.show.html.erb'
   # render 'owned_pets.index.html.erb'
   # render 'ownership_profiles.show.html.erb'
   # render 'dwelling_infos.show.html.erb'


	end

	def new
		@application = Application.new
	end	

	def create
		application = Application.create(
																			dog_id: params[:dog_id], 
																			user_id: current_user, 
																			status: "in progress"
																		)
		LifestyleInfo.create(application_id: application.id)
		DwellingInfo.create(application_id: application.id)
		OwnershipHistory.create(application_id: application.id)
		OwnershipProfile.create(application_id: application.id)

		redirect_to "/applications/#{application.id}/lifestyle_info"
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
			redirect_to "/lifestyle_infos/#{lifestyle_info.id}"
		else
			render 'update.html.erb'
		end

	end

	def destroy
		
	end
			
end
