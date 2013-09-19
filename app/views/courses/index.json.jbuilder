json.array!(@courses) do |course|
  json.extract! course, :name, :typed, :view, :start_date, :end_date, :period, :hours, :based, :outlet_control, :certificate, :cost
  json.url course_url(course, format: :json)
end
