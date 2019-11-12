Types::BordaType = GraphQL::ObjectType.define do
  name 'Borda'

  field :id, !types.ID
  field :nome, !types.String
  field :preco_adicional, !types.Float
end
