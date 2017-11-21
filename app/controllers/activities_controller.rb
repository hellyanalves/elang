class ActivitiesController < ApplicationController
    def themesort
        respond_to do |format|
            format.html{ redirect_to main_main_url(:activity => "themesort")}
        end
    end
    def oneword
        respond_to do |format|
            format.html{ redirect_to main_main_url(:activity => "oneword")}
        end
    end
    
    def guessing
        respond_to do |format|
            format.html{ redirect_to main_main_url(:activity => "guessing")}
        end
    end
end