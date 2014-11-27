class CreateTieneTuitPalClaves < ActiveRecord::Migration
  def change
    create_table :tiene_tuit_pal_claves do |t|
    	t.integer	:tuit_palClave_id

      t.timestamps null: false
    end
  end
end
