class CreateFraseCalificadoras < ActiveRecord::Migration
  def change
    create_table :frase_calificadoras do |t|
    	t.integer	:frase_calificadora_id
    	t.string	:frase
    	t.integer	:estado_animo

      t.timestamps null: false
    end
  end
end
