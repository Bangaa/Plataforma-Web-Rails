class CreateKeyWords < ActiveRecord::Migration
  def change
    create_table :key_words do |t|
	  t.integer :consola_id
      t.string :nombre

      t.timestamps null: false
    end
  end
end
