json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :body, :published_on, :author
  json.url blog_url(blog, format: :json)
end
