class TeamsController < ApplicationController
	before_action :set_user, only: [:index, :new, :create]
	before_action :signed_in_user, only: [:index, :new, :create]
    respond_to :html, :js, only: [:new, :create]

    def index
    	@teams = @user.teams.all  
    end
              
	def new
		@team = @user.teams.new
	end

	def create
		@team = @user.teams.create(team_params)
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

	private
	
	def team_params
		params.require(:team).permit(:name, :description)
	end

	def set_user
      @user = current_user
    end
end