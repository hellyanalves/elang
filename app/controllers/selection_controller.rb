class SelectionController < ApplicationController
    def  selection
    end
    def users_idioms
        @useridioms = UserIdiom.all
    end
end