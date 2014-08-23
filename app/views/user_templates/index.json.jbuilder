json.array!(@user_templates) do |user_template|
  json.extract! user_template, :id
  json.url user_template_url(user_template, format: :json)
end
