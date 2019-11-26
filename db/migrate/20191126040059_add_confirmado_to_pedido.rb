class AddConfirmadoToPedido < ActiveRecord::Migration[5.1]
  def change
    add_column :pedidos, :confirmado, :boolean
  end
end
