module TeamsHelper

	def check_for_team
		if current_user.teams.present?
		  	if current_user.default_team == nil 
		  		set_default_team(current_user.teams.first)
		  	else
		  		set_active_team
			end
		else
		  redirect_to new_team_path
		end
	end

	def set_default_team(team)
		@current_user.update_attribute(:default_team, team.id)
		set_active_team(team)
	end

	def set_active_team(team)
		team = Team.find(team)
		cookies[:current_product] = team.id
	end

	def active_team
		active_team = Team.find(cookies[:current_product])
	end

end

