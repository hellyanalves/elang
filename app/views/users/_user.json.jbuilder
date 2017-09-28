json.extract! user, :id, :name, :email, :password, :country_id, :address, :created_at, :updated_at
json.url user_url(user, format: :json)
