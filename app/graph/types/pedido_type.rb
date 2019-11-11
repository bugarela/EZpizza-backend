Types::PedidoType = GraphQL::ObjectType.define do
  name 'Pedido'

  field :id, !types.ID
  field :email, !types.String
  field :endereco, !types.String
  # ... other fields ...
  # field :postal_code, types.String

  # field :owner, Types::UserType do
  #   resolve -> (obj, args, ctx) { obj.user }
  # end
  # field :bookings, !types[Types::BookingType]
end
