class CreateDonos < ActiveRecord::Migration[7.0]
  def change
    create_table :donos do |t|
      t.string :cnpj

      t.timestamps
    end
  end
end
