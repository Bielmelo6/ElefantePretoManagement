class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :produto
      t.integer :valor

      t.timestamps
    end
  end
end
