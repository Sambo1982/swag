module TeamsHelper

def check_for_team(user)
	if user.teams.present?
	  current_team = user.teams.first
	  set_active_team(current_team)
	  redirect_to team_path(current_team)
	else
	  redirect_to new_team_path
	end
end

def set_active_team(team)
	@active_team = team
end


end
