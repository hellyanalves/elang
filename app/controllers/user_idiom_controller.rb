class UserIdiomController< ApplicationController
    def users_idioms
        @user_idiom = UserIdiom.new
        @idioms = Idiom.all
        @user_idioms = UserIdiom.where(:user_id => current_user.id)
    end    
    
    def create
        @user_idiom = UserIdiom.new(user_idiom_params)
        respond_to do |format|
          if @user_idiom.save
            @idioms = Idiom.all
            format.html { redirect_to user_idiom_users_idioms_url}
          else
            @idioms = Idiom.all
            @user_idioms = UserIdiom.where(:user_id => current_user.id)
            format.html { redirect_to user_idiom_users_idioms_url}
          end
        end
    end
    

    
    def user_idiom_params
      params.require(:user_idiom).permit(:user_id,:idiom_id,:learn,:teach)
    end

end