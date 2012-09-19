class UserController < ApplicationController
  
  def index
     @client = Geocoder.search(request.ip)
     respond_to do |format|
       format.html # index.html.erb
       format.json { render json: @client }
     end
    end
  end
  
