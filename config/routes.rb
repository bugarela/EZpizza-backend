Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"

  resources :tamanhos
  resources :bordas
  resources :sabors
  resources :sabores
  resources :pedidos
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'

  root to: redirect('/graphiql')
  resources :graphql

  match '*all', controller: 'application', action: 'cors_preflight_check', via: [:options]
end
