class WelcomeController < ApplicationController

  def index
    require 'twitter'
  	client = Twitter::REST::Client.new do |config|
   		  config.consumer_key        = "NCmCLNXwiFnhEAkfStE07aBap"
    		config.consumer_secret     = "wal2HN2lM0in5ftpwEcT5v4mlSrvEoGVbNcj0VyswMcCGJvj8G"
    		config.access_token        = "2770711470-dcYhvrC63vFtTrbd3FfYd96IkNhvcME8io4bhgF"
    		config.access_token_secret = "DveuzCdXUYYhACB5s40xav0rNq5dic3GeXmKSeABouSvy"
  	end
  	topics = ["ps4","xbox 360", "wii"]
  	@tweets = client.search(topics.join(","), :include_rts => false).take(3).collect
  end
end

