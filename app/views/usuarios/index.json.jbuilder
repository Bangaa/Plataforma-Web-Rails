json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :usuario_id, :user_name, :seguidores
  json.url usuario_url(usuario, format: :json)
end
