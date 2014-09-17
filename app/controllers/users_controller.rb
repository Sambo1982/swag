class UsersController < ApplicationController
	before_action :set_user, only: [:destroy]
	before_action :signed_in_user,
                only: [:index, :edit, :update, :cancel]
 	before_action :correct_user,   only: [:edit, :update, :cancel]

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			sign_in @user
      		redirect_to dashboard_path
      		flash[:success] = "Congrats! You have just created your account."
    	else
      		render :new
    	end
	end

	def edit
	end

	def update
		if @user.update_attributes(user_params)
		  flash[:success] = "Profile updated"
		  redirect_to root_path
		else
		  render 'edit'
		end
	end

	def destroy
	end


	

private
	
	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation, :status, :deleted_at)
	end

	def set_user
      @user = User.find(params[:id])
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end



end
