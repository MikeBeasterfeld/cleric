json.array!(@users) do |user|
  json.extract! user, :id, :username, :name, :bio, :twitter
  json.url user_url(user, format: :json)
end
