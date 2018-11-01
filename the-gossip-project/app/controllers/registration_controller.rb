class RegistrationController < ApplicationController
  def new
  end
  def create
    user = User.new
    user.name = params["name"]
    user.email = params["email"]
    user.password = params["password"]
    user.save
    redirect_to "/user"
  end
end
