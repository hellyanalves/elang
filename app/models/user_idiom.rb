class UserIdiom < ActiveRecord::Base
  belongs_to :user
  belongs_to :idiom
end
