Types::BordaType = GraphQL::ObjectType.define do
  name 'Borda'

  field :id, !types.Int
  field :nome, !types.String
  field :preco_adicional, !types.Float
end
