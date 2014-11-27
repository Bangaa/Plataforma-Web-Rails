class CreateEstadisticas < ActiveRecord::Migration
  def change
    create_table :estadisticas do |t|

      t.timestamps null: false
    end
  end
end
