json.array!(@media) do |medium|
  json.extract! medium, :id, :name, :type, :size, :length
  json.url medium_url(medium, format: :json)
end
