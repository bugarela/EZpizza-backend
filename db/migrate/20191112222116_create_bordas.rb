class CreateBordas < ActiveRecord::Migration[5.1]
  def change
    create_table :bordas do |t|
      t.string :nome
      t.decimal :preco_adicional

      t.timestamps
    end
  end
end
