require 'rails_helper'

RSpec.describe Mutations::CreatePedido, type: :request do
  describe '.resolve' do
    let(:params) do
      <<~GQL
        email: "comprador@exemplo.com",
        endereco: "R: Beira Rio, nº 2000",
        tamanho: 1,
        sabores: [1, 2],
        borda: 1
      GQL
    end

    it 'creates a pedido' do
      expect do
        post '/graphql', params: { query: query }
      end.to change { Pedido.count }.by(1)
    end

    it 'returns a pedido' do
      post '/graphql', params: { query: query }
      json = JSON.parse(response.body)
      data = json['data']['createPedido'].deep_symbolize_keys

      expect(data).to include(
        id: be_present,
        email: 'comprador@exemplo.com',
        endereco: 'R: Beira Rio, nº 2000',
        sabores: [{ nome: 'Calabresa' }, { nome: '4 queijos' }],
        tamanho: { nome: 'Pequena' },
        borda: { nome: 'Cheddar' },
      )
    end

    context 'when there are too many sabores' do
      let(:params) do
      <<~GQL
        email: "comprador@exemplo.com",
        endereco: "R: Beira Rio, nº 2000",
        tamanho: 1,
        sabores: [1, 2, 3],
        borda: 1
      GQL
      end

      it 'responds with bad request' do
        post '/graphql', params: { query: query }

        expect(response.code).to eq('400')
      end
    end
  end

  let(:query) do
      <<~GQL
        mutation {
          createPedido(
          #{params}
        ) {
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
end
