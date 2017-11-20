class SelectionController < ApplicationController
    def  selection
        @searchresults = {}
        @idiom = Idiom.new
    end
    
    def searchresults
        @searchresults = User.all
        respond_to do |format|
            format.html {render '/selection/selection'}
        end
    end
    
    def users_idioms
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def selection_params
      params.permit(:idiom)
    end
end