module TeamsHelper

def check_for_team(user)
	if user.teams.present?
	  current_team = user.teams.first
	  redirect_to team_path(current_team)
	else
	  redirect_to new_team_path
	end
end

end
