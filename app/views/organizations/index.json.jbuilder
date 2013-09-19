json.array!(@organizations) do |organization|
  json.extract! organization, :address, :phone, :email, :site, :serial, :number, :certificate
  json.url organization_url(organization, format: :json)
end
