class CreatePalabraClaves < ActiveRecord::Migration
  def change
    create_table :palabra_claves do |t|
	  t.integer	:palabra_clave_id
	  t.string	:palabra
    

      t.timestamps null: false
    end
  end
end
