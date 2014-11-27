json.array!(@palabra_claves) do |palabra_clave|
  json.extract! palabra_clave, :id, :palabra_clave_id, :palabra
  json.url palabra_clave_url(palabra_clave, format: :json)
end
