class CreateFraseCalificadoras < ActiveRecord::Migration
  def change
    create_table :frase_calificadoras do |t|

      t.timestamps null: false
    end
  end
end
