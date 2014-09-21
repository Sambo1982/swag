class StaticPagesController < ApplicationController 
    
    def home
    end

    def dashboard
    	@user = current_user
    	if @user.teams.count <= 0
    		redirect_to new_team_path
    	else
    	end
    end
    
end