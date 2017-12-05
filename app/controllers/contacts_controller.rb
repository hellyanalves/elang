class ContactsController < ApplicationController
    def create
        @contact = Contact.new(contacts_params)
        if (@contact.save)
            redirect_to selection_selection_url
        else
            redirect_to selection_selection_url
        end
    end

    def contacts_params
      params.permit(:owner_id, :user_id)
    end
end  