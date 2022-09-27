class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.integer :preco
      t.references :conta, null: false, foreign_key: true
      t.string :nome

      t.timestamps
    end
  end
end
