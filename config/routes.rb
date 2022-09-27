Rails.application.routes.draw do
  resources :donos
  resources :funcionarios
  resources :clientes
  resources :conta
  resources :items
  resources :pessoas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
