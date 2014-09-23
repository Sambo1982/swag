class TeamsController < ApplicationController
	before_action :set_user, only: [:index, :new, :create, :edit, :update, :show]
	before_action :set_team, only: [:edit, :update, :show]
	before_action :signed_in_user, only: [:index, :new, :create, :edit, :update, :show]
    respond_to :html, :js, only: [:new, :create, :update]

    def index
    	@teams = @user.teams.all  
    end

    def show
    	@other_teams = @user.teams.where.not(id: @team.id)
    end
              
	def new
		@team = current_user.teams.new
	end

	def create
		@team = current_user.teams.create(team_params)
		respond_to do |format|
		    if @team.save
		      format.html 
		      format.js
		    else 
		      format.html
		      format.js
		    end
	  	end
	end

	def edit
	end

	def update
		respond_to do |format|
			if @team.update_attributes(team_params)
			  format.html 
		      format.js 
		    else 
		      format.html
		      format.js
		    end
		end
	end


	private

	def set_team
      @team = Team.find(params[:id])
    end
	
	def team_params
		params.require(:team).permit(:name, :description)
	end

	def set_user
      @user = current_user
    end
end