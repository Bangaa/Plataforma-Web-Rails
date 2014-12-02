class CreateKeyWords < ActiveRecord::Migration
  def change
    create_table :key_words do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
