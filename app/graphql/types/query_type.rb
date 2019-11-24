module Types
  class QueryType < Types::BaseObject
    field :pedidos, [Types::PedidoType], null: false

    def pedidos
      Pedido.all
    end

    field :pedido, Types::PedidoType, null: false do
      argument :id, Int, required: true
    end

    def pedido(id:)
      Pedido.find(id)
    end

    field :sabores, [Types::SaborType], null: false

    def sabores
      Sabor.all
    end

    field :tamanhos, [Types::TamanhoType], null: false

    def tamanhos
      Tamanho.all
    end

    field :bordas, [Types::BordaType], null: false

    def bordas
      Borda.all
    end
  end
end
