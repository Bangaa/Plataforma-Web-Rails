class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
    	t.integer 	:tweets_id
    	t.datatime	:fecha
    	t.string	:mensaje

      t.timestamps null: false
    end
  end
end
