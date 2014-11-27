json.array!(@estadisticas) do |estadistica|
  json.extract! estadistica, :id, :estadistica_id, :positivos, :negativos, :neutrales, :suma_total
  json.url estadistica_url(estadistica, format: :json)
end
