class CreateEstadisticas < ActiveRecord::Migration
  def change
    create_table :estadisticas do |t|
	  t.integer	:estadistica_id
	  t.integer	:positivos
	  t.integer	:negativos
	  t.integer	:neutrales
	  t.integer	:suma_total

      t.timestamps null: false
    end
  end
end
