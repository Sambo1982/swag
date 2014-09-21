class StaticPagesController < ApplicationController 
    
    def home
    end

    def dashboard
    	@user = current_user
    	@team = current_user.teams.new
    	respond_to do |format|
    		format.html
    		format.json
    		format.js
    	end
    end
    
end