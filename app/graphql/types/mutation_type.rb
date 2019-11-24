module Types
  class MutationType < Types::BaseObject
    field :create_pedido, mutation: Mutations::CreatePedido
  end
end
