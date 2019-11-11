Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :pedidos, !types[Types::PedidoType] do
    resolve -> (obj, args, ctx) {
      Pedido.all
    }
  end

  field :sabores, !types[Types::SaborType] do
    resolve -> (obj, args, ctx) {
      Sabor.all
    }
  end
end
