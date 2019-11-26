require 'rails_helper'

RSpec.describe Types::QueryType, type: :request do
  let(:pedido) { Pedido.first }
  let(:pedido_data) do
    {
      id: pedido.id,
      email: pedido.email,
      endereco: pedido.endereco,
      sabores: [{ nome: pedido.sabores.first.nome }, { nome: pedido.sabores.second.nome }],
      tamanho: { nome: pedido.tamanho.nome },
      borda: { nome: pedido.borda.nome },
    }
  end

  describe '.pedidos' do
    let(:query) do
      <<~GQL
         {
           pedidos {
            id
            email
            endereco
            sabores {
              nome
            }
            tamanho {
              nome
            }
            borda {
              nome
            }
          }
        }
      GQL
    end

    it 'returns an array' do
      post '/graphql', params: { query: query }
      json = JSON.parse(response.body)
      data = json['data']['pedidos'].map(&:deep_symbolize_keys)

      expect(data).to be_a(Array)
    end

    it 'returns all pedidos' do
      post '/graphql', params: { query: query }
      json = JSON.parse(response.body)
      data = json['data']['pedidos'].map(&:deep_symbolize_keys)

      expect(data.first).to include(pedido_data)
    end
  end

  describe '.pedido' do
    let(:query) do
      <<~GQL
         {
           pedido(id: 1) {
            id
            email
            endereco
            sabores {
              nome
            }
            tamanho {
              nome
            }
            borda {
              nome
            }
          }
        }
      GQL
    end

    it 'returns first pedido' do
      post '/graphql', params: { query: query }
      json = JSON.parse(response.body)
      data = json['data']['pedido'].deep_symbolize_keys

      expect(data).to eq(pedido_data)
    end
  end

  describe '.sabores' do
    let(:query) do
      <<~GQL
         {
           sabores {
            id
            nome
            precoAdicional
            ingredientes
          }
        }
      GQL
    end

    it 'returns an array' do
      post '/graphql', params: { query: query }
      json = JSON.parse(response.body)
      data = json['data']['sabores'].map(&:deep_symbolize_keys)

      expect(data).to be_a(Array)
    end

    it 'returns all sabores sorted by popularity' do
      most_popular_sabor = Sabor.first

      post '/graphql', params: { query: query }
      json = JSON.parse(response.body)
      data = json['data']['sabores'].map(&:deep_symbolize_keys)

      expect(data.first).to include(most_popular_sabor.to_h)
    end
  end

  describe '.tamanhos' do
    let(:query) do
      <<~GQL
         {
           tamanhos {
            id
            nome
            preco
            diametro
            maxSabores
          }
        }
      GQL
    end

    it 'returns an array' do
      post '/graphql', params: { query: query }
      json = JSON.parse(response.body)
      data = json['data']['tamanhos'].map(&:deep_symbolize_keys)

      expect(data).to be_a(Array)
    end

    it 'returns all tamanhos' do
      post '/graphql', params: { query: query }
      json = JSON.parse(response.body)
      data = json['data']['tamanhos'].map(&:deep_symbolize_keys)

      expect(data.first).to include(Tamanho.first.to_h)
    end
  end

  describe '.bordas' do
    let(:query) do
      <<~GQL
         {
           bordas {
            id
            nome
            precoAdicional
          }
        }
      GQL
    end

    it 'returns an array' do
      post '/graphql', params: { query: query }
      json = JSON.parse(response.body)
      data = json['data']['bordas'].map(&:deep_symbolize_keys)

      expect(data).to be_a(Array)
    end

    it 'returns all bordas' do
      post '/graphql', params: { query: query }
      json = JSON.parse(response.body)
      data = json['data']['bordas'].map(&:deep_symbolize_keys)

      expect(data.first).to include(Borda.first.to_h)
    end
  end

end
