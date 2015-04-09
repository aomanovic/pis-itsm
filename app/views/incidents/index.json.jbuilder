json.array!(@incidents) do |incident|
  json.extract! incident, :id, :name, :description, :stauts
  json.url incident_url(incident, format: :json)
end
