class SessionsController < ApplicationController
	
	def new
	end

  	def create
	   user = User.with_deleted.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        check_for_canceled(user)
      else
        flash.now[:error] = 'Invalid email/password combination' 
        render 'new'
      end
  	end

  	def destroy
    	sign_out
    	redirect_to root_url
  	end

  	def check_for_canceled(user)
  		if user.destroyed? 
        	flash.now[:error] = 'Looks like you canceled your account. Click HERE to restore it.'
        	session[:tmp_user] = user.id
        	redirect_to restore_path
        else
        	sign_in user
        	redirect_to teams_path
        end
  	end


end
