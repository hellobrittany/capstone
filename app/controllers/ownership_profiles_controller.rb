class OwnershipProfilesController < ApplicationController
	def index
		@ownership_profiles = OwnershipProfile.all
	end

	def new
		@ownership_profile = OwnershipProfile.new
	end

	def create
		ownership_profile = OwnershipProfile.new(
																							application_id: params[:application_id], 
																							regular_vet: params[:regular_vet],
																							who_grooms: params[:who_grooms], 
																							wears_collar: params[:wears_collar], 
																							experience_level: params[:experience_level], 
																							discipline_style: params[:experience_level], 
																							training_obedience_class: params[:training_obedience_class], 
																							training_hit: params[:training_hit], 
																							training_verbal: params[:training_verbal],
																							training_clicker: params[:training_clicker], 
																							training_other: params[:training_other], 
																							dog_walk_style: params[:dog_walk_style], 
																							ready: params[:ready], 
																							invested: params[:invested], 
																							move_locally_plan: params[:move_locally_plan], 
																							move_far_plan: params[:move_far_plan], 
																							move_internationally_plan: params[:move_internationally_plan], 
																							gu_excessive_barking: params[:gu_excessive_barking], 
																							gu_biting: params[:gu_biting], 
																							gu_digging: params[:gu_digging], 
																							gu_moving: params[:gu_moving], 
																							gu_divorce: params[:gu_divorce], 
																							gu_poor_watchdog: params[:gu_poor_watchdog], 
																							gu_distructive: params[:gu_distructive], 
																							gu_financial: params[:gu_financial], 
																							gu_accidents: params[:gu_accidents], 
																							gu_growls: params[:gu_growls], 
																							gu_vet_bills: params[:gu_vet_bills], 
																							gu_shedding: params[:gu_shedding], 
																							gu_allergies: params[:gu_allergies], 
																							gu_new_partner: params[:gu_new_partner], 
																							gu_aggressive: params[:gu_aggressive], 
																							gu_other: params[:gu_other]
																							)
		if ownership_profile.save
      flash[:success] = 'Successfully added Ownership Profile!'
      redirect_to '/dwelling_infos/new'
    else
      flash[:warning] = 'Oops, you missed something, double check your input.'
      render 'new.html.erb'
    end
	end

	def show
		@ownership_profile = OwnershipProfile.find(params[:id])
	end

	def edit
		@ownership_profile = OwnershipProfile.find(params[:id])
	end

	def update
		ownership_profile = OwnershipProfile.find(params[:id})

			ownership_profile.assign_attributes(
																					application_id: params[:application_id], 
																					regular_vet: params[:regular_vet],
																					who_grooms: params[:who_grooms], 
																					wears_collar: params[:wears_collar], 
																					experience_level: params[:experience_level], 
																					discipline_style: params[:experience_level], 
																					training_obedience_class: params[:training_obedience_class], 
																					training_hit: params[:training_hit], 
																					training_verbal: params[:training_verbal],
																					training_clicker: params[:training_clicker], 
																					training_other: params[:training_other], 
																					dog_walk_style: params[:dog_walk_style], 
																					ready: params[:ready], 
																					invested: params[:invested], 
																					move_locally_plan: params[:move_locally_plan], 
																					move_far_plan: params[:move_far_plan], 
																					move_internationally_plan: params[:move_internationally_plan], 
																					gu_excessive_barking: params[:gu_excessive_barking], 
																					gu_biting: params[:gu_biting], 
																					gu_digging: params[:gu_digging], 
																					gu_moving: params[:gu_moving], 
																					gu_divorce: params[:gu_divorce], 
																					gu_poor_watchdog: params[:gu_poor_watchdog], 
																					gu_distructive: params[:gu_distructive], 
																					gu_financial: params[:gu_financial], 
																					gu_accidents: params[:gu_accidents], 
																					gu_growls: params[:gu_growls], 
																					gu_vet_bills: params[:gu_vet_bills], 
																					gu_shedding: params[:gu_shedding], 
																					gu_allergies: params[:gu_allergies], 
																					gu_new_partner: params[:gu_new_partner], 
																					gu_aggressive: params[:gu_aggressive], 
																					gu_other: params[:gu_other]
																					)

			if ownership_profile.save
				flash[:success] = "Ownership Profile has been updated"
			end	
	end

	def destroy
		
	end
end
