json.array!(@business_processes) do |business_process|
  json.extract! business_process, :id, :name, :description
  json.url business_process_url(business_process, format: :json)
end
