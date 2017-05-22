Rails.application.routes.draw do
  root "products#index"

  resources :products
  resources :users
  
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  get "/logout" => "sessions#destroy"
end
