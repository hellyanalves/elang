class LoginController < ApplicationController
    def  login
      @login = User.new(login_params)
      respond_to do |format|
        format.html { render :login }
      end
    end
    def show
      @login = User.new(login_params)
      respond_to do |format|
        format.html { render :login }
      end
    end
    
    
    def auth
        #user = User.find_by(email: params[:email])
        if user && user.senha == params[:password]
          session[:isLogedIn] = true
          session[:userLogedIn] = user.id
          redirect_to "/selection/selection"
        else  
          flash.now[:alert] = ''
          render action: 'login'
        end
    end
    
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def login_params
      params.permit(:email, :password)
    end
end