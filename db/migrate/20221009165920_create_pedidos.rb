class CreatePedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :pedidos do |t|

      t.references :item, null: false, foreign_key: true
      t.references :cliente, null: false, foreign_key: true
      t.integer :total

      t.timestamps
    end
  end
end
