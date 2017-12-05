class AddSkypeusernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :skypeusername, :string
  end
end
