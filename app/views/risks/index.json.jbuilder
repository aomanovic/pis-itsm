json.array!(@risks) do |risk|
  json.extract! risk, :id, :name, :description, :possibility, :it_process_id
  json.url risk_url(risk, format: :json)
end
