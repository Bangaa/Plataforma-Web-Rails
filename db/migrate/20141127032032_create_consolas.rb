class CreateConsolas < ActiveRecord::Migration
  def change
	create_table :consolas do |t|
	  t.string	:nombre_consola
	  t.text	:descripcion_consola

	  t.timestamps null: false
	end
  end
end
