class CreatePedidos < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos do |t|
      t.string :email
      t.string :endereco

      t.timestamps
    end
  end
end
