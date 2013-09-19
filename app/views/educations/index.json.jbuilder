json.array!(@educations) do |education|
  json.extract! education, :name
  json.url education_url(education, format: :json)
end
