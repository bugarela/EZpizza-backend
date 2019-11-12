class CreateTamanhos < ActiveRecord::Migration[5.1]
  def change
    create_table :tamanhos do |t|
      t.string :nome
      t.decimal :preco
      t.integer :diametro

      t.timestamps
    end
  end
end
