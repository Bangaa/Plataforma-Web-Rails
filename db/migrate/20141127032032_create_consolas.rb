class CreateConsolas < ActiveRecord::Migration
  def change
    create_table :consolas do |t|

      t.timestamps null: false
    end
  end
end
