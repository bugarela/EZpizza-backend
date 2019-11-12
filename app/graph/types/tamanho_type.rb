Types::TamanhoType = GraphQL::ObjectType.define do
  name 'Tamanho'

  field :id, !types.ID
  field :nome, !types.String
  field :preco, !types.Float
  field :diametro, !types.Int
end
