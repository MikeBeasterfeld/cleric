json.array!(@stylesheets) do |stylesheet|
  json.extract! stylesheet, :id, :name, :controller, :action, :active
  json.url stylesheet_url(stylesheet, format: :json)
end
