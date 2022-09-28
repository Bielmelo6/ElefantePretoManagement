class CreateFuncionarios < ActiveRecord::Migration[7.0]
  def change
    create_table :funcionarios do |t|
      t.string :nome
      t.string :cpf
      t.date :nascimento
      t.string :email
      t.references :cargo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
