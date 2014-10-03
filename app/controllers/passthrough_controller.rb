class PassthroughController < ApplicationController
  
  def index
    if signed_in?
      redirect_to teams_path
    else
      redirect_to home_path
    end 
  end

end