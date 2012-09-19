class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def user
    @client = request.ip
  end
  
end
