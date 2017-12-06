class SelectionController < ApplicationController
    def  selection
        @user_contacts = Contact.where(:owner_id => current_user.id)
        @idiom = Idiom.new
    end
    
    def searchresults
        @searchresults = []
        @users_idioms = UserIdiom.where(:idiom_id => params[:idiom][:id])
        @users_idioms.each do |user_idiom|
            @searchresults << User.find(user_idiom.user_id)
        end
        @search_idiom = Idiom.find(params[:idiom][:id]).name
        @user_contacts = Contact.where(:owner_id => current_user.id)
        @idiom = Idiom.new
        render action: 'selection'
    end
    
    def users_idioms
        @idioms = Idiom.all
        @user_idioms = UserIdiom.where(:user_id => current_user.id)
    end
    
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def selection_params
      params.permit(:idiom, :id)
    end
end