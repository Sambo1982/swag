class IntegrationsController < ApplicationController

	def new
		team = @active_team
		@integration = team.integrations.new
		respond_to do |format|
        	format.js
    	end
	end

	def create
		team = @active_team
		@integration = team.integrations.create
	end

end
