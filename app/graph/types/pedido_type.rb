Types::PedidoType = GraphQL::ObjectType.define do
  name 'Pedido'

  field :id, !types.ID
  field :email, !types.String
  field :endereco, !types.String
  field :sabores, types[Types::SaborType]
  # field :tamanho, Types::TamanhoType
  # field :borda, Types::BordaType
  # ... other fields ...
  # field :postal_code, types.String

  field :tamanho, Types::TamanhoType do
    resolve -> (obj, args, ctx) { obj.tamanho }
  end
  field :borda, Types::BordaType do
    resolve -> (obj, args, ctx) { obj.borda }
  end
  # field :bookings, !types[Types::BookingType]
end
