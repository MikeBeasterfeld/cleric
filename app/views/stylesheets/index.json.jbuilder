json.array!(@stylesheets) do |stylesheet|
  json.extract! stylesheet, :id
  json.url stylesheet_url(stylesheet, format: :json)
end
