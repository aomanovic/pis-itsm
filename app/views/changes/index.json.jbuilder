json.array!(@changes) do |change|
  json.extract! change, :id, :plan, :change_request, :comment
  json.url change_url(change, format: :json)
end
