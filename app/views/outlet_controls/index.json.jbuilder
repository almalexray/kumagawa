json.array!(@outlet_controls) do |outlet_control|
  json.extract! outlet_control, :name
  json.url outlet_control_url(outlet_control, format: :json)
end
