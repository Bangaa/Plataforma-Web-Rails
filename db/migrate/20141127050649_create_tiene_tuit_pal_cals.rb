class CreateTieneTuitPalCals < ActiveRecord::Migration
  def change
    create_table :tiene_tuit_pal_cals do |t|
    	t.integer	:tw_palCal_id

      t.timestamps null: false
    end
  end
end
