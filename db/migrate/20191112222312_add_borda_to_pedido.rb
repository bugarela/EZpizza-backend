class AddBordaToPedido < ActiveRecord::Migration[5.1]
  def change
    add_reference :pedidos, :borda, foreign_key: true
  end
end
