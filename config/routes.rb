Rails.application.routes.draw do
  root 'home#index'
  resources :contact
  resources :home
  resources :team
  resources :profile
  resources :gossips
end
