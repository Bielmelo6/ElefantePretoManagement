class CreateFuncionarios < ActiveRecord::Migration[7.0]
  def change
    create_table :funcionarios do |t|
      t.integer :salario
      t.string :ctps

      t.timestamps
    end
  end
end
