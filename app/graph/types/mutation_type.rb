Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :create_pedido, mutation: Mutations::CreatePedido
end
