json.array!(@certificates) do |certificate|
  json.extract! certificate, :name
  json.url certificate_url(certificate, format: :json)
end
