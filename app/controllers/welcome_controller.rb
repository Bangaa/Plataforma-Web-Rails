class WelcomeController < ApplicationController

  def index
	require 'twitter'
	client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = "NCmCLNXwiFnhEAkfStE07aBap"
	  config.consumer_secret     = "wal2HN2lM0in5ftpwEcT5v4mlSrvEoGVbNcj0VyswMcCGJvj8G"
	  config.access_token        = "2770711470-dcYhvrC63vFtTrbd3FfYd96IkNhvcME8io4bhgF"
	  config.access_token_secret = "DveuzCdXUYYhACB5s40xav0rNq5dic3GeXmKSeABouSvy"
	end

	topics = []

	palabras = PalabraClave.select(:palabra)

	palabras.each do |pal|
	  topics.push pal.palabra
	end

	temas = topics.join(" OR ")

	puts "los temas son: #{temas}"
	query_opt = {
	  :lang => "es"
	}

	@tweets = client.search(temas, query_opt).take(30).collect

	@tweets.each do |tweet|
	  id = tweet.id
	  texto = tweet.full_text
	  fecha = tweet.created_at

	  tuit = Tweet.new :id => id
	  tuit.mensaje = texto
	  tuit.fecha = fecha

	  tuit.save
	end
  end
end

