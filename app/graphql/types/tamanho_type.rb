Types::TamanhoType = GraphQL::ObjectType.define do
  name 'Tamanho'

  field :id, !types.Int
  field :nome, !types.String
  field :preco, !types.Float
  field :diametro, !types.Int
  field :max_sabores, !types.Int
end
