json.array!(@episodes) do |episode|
  json.extract! episode, :id, :title, :number, :part, :description, :notes, :media
  json.url episode_url(episode, format: :json)
end
