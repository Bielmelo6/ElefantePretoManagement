class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.references :dono, null: false, foreign_key: true

      t.timestamps
    end
  end
end
