json.array!(@istrazivanjes) do |istrazivanje|
  json.extract! istrazivanje, :id, :klasa, :komentar, :potreban_zahtjev, :problem_id
  json.url istrazivanje_url(istrazivanje, format: :json)
end
