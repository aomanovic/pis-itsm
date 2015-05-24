json.array!(@problems) do |problem|
  json.extract! problem, :id, :naziv, :opis, :kategorija, :prioritet
  json.url problem_url(problem, format: :json)
end
