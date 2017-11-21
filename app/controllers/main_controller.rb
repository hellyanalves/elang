class MainController < ApplicationController
    def  main
        if (params.has_key?(:activity))
            @activity = "activities/"+params[:activity].to_s()
            @arr = params[:array]
        else
            @activity = "activities/activitygeneric"
        end
    end
    
    def  mainguessing
    end     
       
    def  mainoneword
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def activity_params
      params.permit(:activity)
    end 
end