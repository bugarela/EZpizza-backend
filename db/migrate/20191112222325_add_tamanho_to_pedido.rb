class AddTamanhoToPedido < ActiveRecord::Migration[5.1]
  def change
    add_reference :pedidos, :tamanho, foreign_key: true
  end
end
