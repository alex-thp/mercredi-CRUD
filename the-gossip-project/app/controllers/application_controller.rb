class ApplicationController < ActionController::Base

    def vroom
       @user = User.find_by("name = ?", params["name"])
       if @user.present? && (@user.password == params["password"])
            $u = @user.id
            redirect_to "/user/#{$u}"
       return $u
       end
    end 
end
