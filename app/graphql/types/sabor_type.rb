class Types::SaborType < GraphQL::Schema::Object
  field :id, Int, null: false
  field :nome, String, null: false
  field :precoAdicional, Float, null: true
  field :ingredientes, String, null: false
end
