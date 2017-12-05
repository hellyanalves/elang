class Contact < ActiveRecord::Base
  belongs_to :owner, :class_name => 'User'
  belongs_to :user
end