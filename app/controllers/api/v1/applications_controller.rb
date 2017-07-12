class Api::V1::ApplicationsController < ApplicationController


  def show
    @application = Application.find(params[:id])
    @application.lifestyle_info
    @application.dwelling_info
    @application.ownership_history
    @application.ownership_profile

  end

  def update
    # application = Application.find(params[:id])
    # application.assign_attributes(
    #                                 dog_id: params[:dog_id], 
    #                                 user_id: current_user, 
    #                                 status: params[:status]
    #                               )
    lifestyle_info = LifestyleInfo.find(params[:id])
    lifestyle_info.assign_attributes(
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
    ownership_history = OwnershipHistory.find(params[:id])
    ownership_history.assign_attributes(
                                        number_of_current_pets: params[:number_of_current_pets], 
                                        allowed_breeding: params[:allowed_breeding],
                                        )
    ownership_history.save

    ownership_profile = OwnershipProfile.find(params[:id])
    ownership_profile.assign_attributes( 
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
    ownership_profile.save

    dwelling_info = DwellingInfo.find(params[:id])
    dwelling_info.assign_attributes( 
                                    has_fencing: params[:has_fencing], 
                                    fence_highest_height: params[:fence_highest_height],
                                    fence_lowest_height: params[:fence_lowest_height], 
                                    has_gates: params[:has_gates], 
                                    street_access: params[:street_access], 
                                    who_has_yard_access: params[:who_has_yard_access]
                                    )
    dwelling_info.save



    if application.save
      flash[:success] = "Application updated!"
    end

  end

  def destroy
    
  end
end
