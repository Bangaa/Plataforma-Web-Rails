class CreatePalabraClaves < ActiveRecord::Migration
  def change
    create_table :palabra_claves do |t|

      t.timestamps null: false
    end
  end
end
