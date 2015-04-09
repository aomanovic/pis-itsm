json.array!(@change_evaluations) do |change_evaluation|
  json.extract! change_evaluation, :id, :rate, :description, :change_request, :user_id
  json.url change_evaluation_url(change_evaluation, format: :json)
end
