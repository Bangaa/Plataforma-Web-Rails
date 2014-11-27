class WelcomeController < ApplicationController

  def index
	require 'twitter'
	client = Twitter::REST::Client.new do |config|
	  config.consumer_key        = ""
	  config.consumer_secret     = ""
	  config.access_token        = ""
	  config.access_token_secret = ""
	end

	puts client.access_token

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

	  tuit = Tweet.new :tweet_id => id
	  tuit.mensaje = texto
	  tuit.fecha = fecha 
	  tuit.save

	  user = Usuario.new
	  user.usuario_id = tweet.user.id
	  user.user_name = tweet.user.screen_name
	  user.seguidores = tweet.user.followers_count
	  user.save 
	end
  end
end

