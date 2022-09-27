class CreateConta < ActiveRecord::Migration[7.0]
  def change
    create_table :conta do |t|
      t.integer :total
      t.references :item, null: false, foreign_key: true
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
