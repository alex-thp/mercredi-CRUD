class UserController < ApplicationController
  def index
  end

  def new
  end

  def create
    vroom
 #      @user = User.find_by("name = ?", params["name"])
 #      if @user.present? && (@user.password == params["password"])
 #           u = @user.id
 #           $id_de_user = @user.id
 #           redirect_to "/user/#{u}"
 #      end
 end
  def show
  end
end