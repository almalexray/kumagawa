json.array!(@topics) do |topic|
  json.extract! topic, :name, :description, :hours, :course_id
  json.url topic_url(topic, format: :json)
end
