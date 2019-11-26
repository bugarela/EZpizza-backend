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
      pedidos = Pedido.all

      Sabor.all.sort_by do |sabor|
        pedidos.count { |p| p.sabores.include?(sabor) }
      end.reverse
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
