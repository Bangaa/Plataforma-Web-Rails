json.array!(@tiene_tuit_pal_cals) do |tiene_tuit_pal_cal|
  json.extract! tiene_tuit_pal_cal, :id, :tw_palCal_id
  json.url tiene_tuit_pal_cal_url(tiene_tuit_pal_cal, format: :json)
end
