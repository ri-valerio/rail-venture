json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :description, :num_followers
  json.url blog_url(blog, format: :json)
end
