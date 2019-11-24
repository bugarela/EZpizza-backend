class Types::TamanhoType < GraphQL::Schema::Object
  field :id, Int, null: false
  field :nome, String, null: false
  field :preco, Float, null: false
  field :diametro, Int, null: false
  field :maxSabores, Int, null: false
end
