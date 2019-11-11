Types::SaborType = GraphQL::ObjectType.define do
  name 'Sabor'

  field :id, !types.ID
  field :nome, !types.String
  field :preco_adicional, !types.Float
  field :ingredientes, !types.String
end
