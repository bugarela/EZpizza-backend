Mutations::CreatePedido = GraphQL::Relay::Mutation.define do
  name 'CreatePedido'

  argument :email, String, required: true
  argument :endereco, String, required: true
  argument :sabores, types[Int], required: true
  argument :tamanho, Int, required: true
  argument :borda, Int

  type Types::PedidoType

  def resolve(email: nil, endereco: nil, sabores: [], tamanho: nil, borda: nil)
    Pedido.create(
      email: email,
      endereco: endereco,
      sabores_ids: sabores,
      tamanho_id: tamanho,
      borda_id: borda,
    )
  end
end

