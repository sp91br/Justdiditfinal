json.extract! user, :id, :title, :subtitle, :info, :url, :description, :created_at, :updated_at
json.url user_url(user, format: :json)
