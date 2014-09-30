class StaticPagesController < ApplicationController 
    
    def home
        @disable_nav = true
    end

    def dashboard
        @disable_nav = true
    	@user = current_user
    	@team = current_user.teams.new
        @teams = current_user.teams.all
    	respond_to do |format|
    		format.html
    		format.json
    		format.js
    	end
    end
    
end