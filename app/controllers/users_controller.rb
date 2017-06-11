class UsersController < ApplicationController


	def new
		render 'new.html.erb'
	end

	def create
		user = User.new(
										first_name: params[:first_name], 
										last_name: params[:last_name],
										email: params[:email], 
										address_1: params[:address_1], 
										address_2: params[:address_2], 
										city: params[:city], 
										state: params[:state], 
										zip: params[:zip], 
										phone: params[:phone], 
										spouse_name: params[:spouse_name], 
										spouse_occupation: params[:spouse_occupation], 
										kids: params[:kids], 
										dwelling_type: params[:dwelling_type], 
										dwelling_owned: params[:dwelling_owned], 
										landlord_permission: params[:landlord_permission], 
										landlord_name: params[:landlord_name], 
										landlord_phone: params[:landlord_phone], 
										password: params[:password], 
										password_confirmation: params[:password_confirmation]
										)

		if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup'
    end

	end

end
