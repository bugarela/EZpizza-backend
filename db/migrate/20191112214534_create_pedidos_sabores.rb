class CreatePedidosSabores < ActiveRecord::Migration[5.1]
  def change
    create_table :pedidos_sabores do |t|
      t.references :pedido, foreign_key: true
      t.references :sabor, foreign_key: true
    end
  end
end
