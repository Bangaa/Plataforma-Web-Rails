class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
    	t.integer 	:tweet_id
    	t.datetime	:fecha
    	t.string	:mensaje

      t.timestamps null: false
    end
  end
end
