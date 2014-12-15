json.array!(@consolas) do |consola|
  json.extract! consola, :id, :nombre_consola, :descripcion_consola
  json.url consola_url(consola, format: :json)
end
