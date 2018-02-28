json.extract! user, :id, :latitude, :longitude, :address, :title, :created_at, :updated_at
json.url user_url(user, format: :json)
