class CreateCargos < ActiveRecord::Migration[7.0]
  def change
    create_table :cargos do |t|
      t.string :funcao
      t.integer :salario

      t.timestamps
    end
  end
end
