json.array!(@it_processes) do |it_process|
  json.extract! it_process, :id, :name, :description, :importance, :business_process
  json.url it_process_url(it_process, format: :json)
end
