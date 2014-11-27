json.array!(@frase_calificadoras) do |frase_calificadora|
  json.extract! frase_calificadora, :id, :frase_calificadora_id, :frase, :estado_animo
  json.url frase_calificadora_url(frase_calificadora, format: :json)
end
