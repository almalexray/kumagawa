json.array!(@vieweds) do |viewed|
  json.extract! viewed, :name
  json.url viewed_url(viewed, format: :json)
end
