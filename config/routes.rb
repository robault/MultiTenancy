Rails.application.routes.draw do
  resources :projects
  resources :users
  resources :tenants
  resources :messages
  resources :homes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homes#index"
end
