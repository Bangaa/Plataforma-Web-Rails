json.array!(@tiene_tuit_pal_cals) do |tiene_tuit_pal_cal|
  json.extract! tiene_tuit_pal_cal, :id, :tiene_tuit_pal_cal_id
  json.url tiene_tuit_pal_cal_url(tiene_tuit_pal_cal, format: :json)
end
