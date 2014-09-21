class TeamsController < ApplicationController
	before_action :set_user, only: [:index, :new, :create]
	before_action :signed_in_user,
                only: [:index, :new, :create]

    def index
    	@teams = @user.teams.all  
    end
              
	def new
		@team = @user.teams.new
	end

	def create
		@team = @user.teams.create(team_params)
		if @team.save
      		redirect_to dashboard_path
      		flash[:success] = "Congrats! You have just created a new team"
    	else
      		render :new
    	end
	end

	private
	
	def team_params
		params.require(:team).permit(:name, :description)
	end

	def set_user
      @user = current_user
    end
end