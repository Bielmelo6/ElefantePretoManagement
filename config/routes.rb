Rails.application.routes.draw do
  resources :pedidos
  resources :funcionarios
  resources :donos
  resources :cargos
  resources :clientes
  resources :conta
  resources :items
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
