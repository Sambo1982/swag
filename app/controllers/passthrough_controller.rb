class PassthroughController < ApplicationController
  
  def index
    path = case 
    when signed_in?
      dashboard_path
    else
      home_path
    end 
    redirect_to path
  end

end