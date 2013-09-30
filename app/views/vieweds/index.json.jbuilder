json.array!(@vieweds) do |viewed|
  json.extract! viewed, :name, :id
  json.url viewed_url(viewed, format: :json)
end
