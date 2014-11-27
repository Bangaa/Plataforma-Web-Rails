class CreateTieneTuitPalClaves < ActiveRecord::Migration
  def change
    create_table :tiene_tuit_pal_claves do |t|
	  t.integer	:tiene_tuit_pal_clave_id

      t.timestamps null: false
    end
  end
end
