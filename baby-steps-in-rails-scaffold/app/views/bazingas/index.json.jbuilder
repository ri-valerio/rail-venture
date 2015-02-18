json.array!(@bazingas) do |bazinga|
  json.extract! bazinga, :id, :title, :description, :num_followers
  json.url bazinga_url(bazinga, format: :json)
end
