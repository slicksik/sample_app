class UserController < ApplicationController
  
  def index
    @title = "index page"
    @client_ip = request.remote_ip
end
