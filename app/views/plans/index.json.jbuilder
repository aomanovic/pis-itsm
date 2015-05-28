json.array!(@plans) do |plan|
  json.extract! plan, :id, :name, :steps, :estimation, :risk_id
  json.url plan_url(plan, format: :json)
end
