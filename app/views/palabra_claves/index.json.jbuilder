json.array!(@palabra_claves) do |palabra_clafe|
  json.extract! palabra_clafe, :id, :pal_clave_id, :palabra
  json.url palabra_clafe_url(palabra_clafe, format: :json)
end
