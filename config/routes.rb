Rails.application.routes.draw do
  resources :tamanhos
  resources :bordas
  resources :sabors
  resources :sabores
  resources :pedidos
  mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'

  root to: redirect('/graphiql')
  resources :graphql

end
