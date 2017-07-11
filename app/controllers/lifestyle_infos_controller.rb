class LifestyleInfosController < ApplicationController
	def index
		@lifestyle_infos = LifestyleInfo.all
	end

	def new
		@lifestyle_info = LifestyleInfo.new
	end

	def create
		lifestyle_info = LifestyleInfo.new(
																				application_id: params[:application_id], 
																				allergies: params[:allergies], 
																				reason_companion: params[:reason_companion], 
																				reason_kids: params[:reason_kids], 
																				reason_gift: params[:reason_gift], 
																				reason_other_pet: params[:reason_other_pet], 
																				reason_watchdog: params[:reason_watchdog], 
																				home_during_day: params[:home_during_day], 
																				when_inside: params[:when_inside], 
																				when_outside: params[:when_outside], 
																				hours_dog_left_alone: params[:hours_dog_left_alone], 
																				where_dog_sleep: params[:where_dog_sleep], 
																				outside_areas: params[:outside_areas], 
																				preferred_level_of_exercise: params[:preferred_level_of_exercise], 
																				type_of_dog_food: params[:type_of_dog_food]

																				)

		if lifestyle_info.save
			flash[:success] = "Your lifestyle info has been created."
			redirect_to "/applications/#{application.id}/ownership_history"
		end	
	end

	def show
		@lifestyle_info = LifestyleInfo.find(params[:id])
	end

	def edit
		@lifestyle_info = LifestyleInfo.find(params[:id])

	end

	def update
		lifestyle_info = LifestyleInfo.find(params[:id])
		lifestyle_info.assign_attributes(
																				application_id: params[:application_id], 
																				allergies: params[:allergies], 
																				reason_companion: params[:reason_companion], 
																				reason_kids: params[:reason_kids], 
																				reason_gift: params[:reason_gift], 
																				reason_other_pet: params[:reason_other_pet], 
																				reason_watchdog: params[:reason_watchdog], 
																				home_during_day: params[:home_during_day], 
																				when_inside: params[:when_inside], 
																				when_outside: params[:when_outside], 
																				hours_dog_left_alone: params[:hours_dog_left_alone], 
																				where_dog_sleep: params[:where_dog_sleep], 
																				outside_areas: params[:outside_areas], 
																				preferred_level_of_exercise: params[:preferred_level_of_exercise], 
																				type_of_dog_food: params[:type_of_dog_food]

																				)

		if lifestyle_info.save
			flash[:success] = "Your lifestyle info has been updated!"
		end	

	end

	def destroy
		
	end
end
