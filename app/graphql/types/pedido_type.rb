class Types::PedidoType < GraphQL::Schema::Object
  field :id, Int, null: false
  field :email, String, null: false
  field :endereco, String, null: false
  field :sabores, [Types::SaborType], null: false
  field :tamanho, Types::TamanhoType, null: false
  field :borda, Types::BordaType, null: false

  def tamanho
    object.tamanho
  end

  def borda
    object.borda
  end
end
