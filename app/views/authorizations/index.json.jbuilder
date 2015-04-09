json.array!(@authorizations) do |authorization|
  json.extract! authorization, :id, :user_id, :change_request_id, :authorized, :comment
  json.url authorization_url(authorization, format: :json)
end
