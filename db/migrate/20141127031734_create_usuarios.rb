class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
	  t.integer	:usuario_id
	  t.string	:user_name
	  t.integer	:seguidores

      t.timestamps null: false
    end
  end
end
