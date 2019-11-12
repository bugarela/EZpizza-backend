class CreateSabors < ActiveRecord::Migration[5.1]
  def change
    create_table :sabores do |t|
      t.string :nome
      t.decimal :preco_adicional
      t.string :ingredientes

      t.timestamps
    end
  end
end
