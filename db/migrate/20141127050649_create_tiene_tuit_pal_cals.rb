class CreateTieneTuitPalCals < ActiveRecord::Migration
  def change
    create_table :tiene_tuit_pal_cals do |t|
	  t.integer	:tiene_tuit_pal_cal_id

      t.timestamps null: false
    end
  end
end
