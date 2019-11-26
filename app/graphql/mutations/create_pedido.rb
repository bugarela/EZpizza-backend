module Mutations
  class CreatePedido < BaseMutation
    argument :email, String, required: true
    argument :endereco, String, required: true
    argument :sabores, [Int], required: true
    argument :tamanho, Int, required: true
    argument :borda, Int, required: false

    type Types::PedidoType

    def resolve(email:, endereco:, sabores:, tamanho:, borda:)
      pedido = Pedido.create!(
        email: email,
        endereco: endereco,
        sabor_ids: sabores,
        tamanho_id: tamanho,
        borda_id: borda,
        confirmado: false
      )

      SendgridClient.new.send_email(pedido) if pedido

      pedido
    end
  end
end
