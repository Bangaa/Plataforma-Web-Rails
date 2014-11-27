class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
    	t.integer	:empresa_id
    	t.string	:nombre

      t.timestamps null: false
    end
  end
end
