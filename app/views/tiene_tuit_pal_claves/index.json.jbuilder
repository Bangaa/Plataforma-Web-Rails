json.array!(@tiene_tuit_pal_claves) do |tiene_tuit_pal_clafe|
  json.extract! tiene_tuit_pal_clafe, :id, :tiene_tuit_pal_clave_id
  json.url tiene_tuit_pal_clafe_url(tiene_tuit_pal_clafe, format: :json)
end
