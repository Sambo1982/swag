class IntegrationsController < ApplicationController
	respond_to :html, :js

	def new
		team = active_team
		@integration = team.integrations.new
	end

	def create
		team = active_team
		@integration = team.integrations.create(integration_params)
		@integrations = active_team.integrations.all
	end


	private
	def integration_params
		params.require(:integration).permit(:provider, :api_key, :team_id)
	end

end
