json.array!(@change_requests) do |change_request|
  json.extract! change_request, :id, :name, :description, :user_id
  json.url change_request_url(change_request, format: :json)
end
