Rails.application.routes.draw do

  resources :pedidos
  resources :funcionarios
  devise_for :donos, :controllers => {:registrations => "registrations"}
  resources :donos
  resources :cargos
  resources :clientes
  resources :items

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"

end
