class UserController < ApplicationController
  
  def index
     @client = Geocoder.search(request.ip)
     @city = request.location.city
     @ip_address = request.ip
    @s = request.location.coordinates
     
     respond_to do |format|
       format.html # index.html.erb
       format.json { render json: @client}
     end
    end

 
  end
  
