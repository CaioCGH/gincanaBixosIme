Rails.application.routes.draw do
  resources :teams
  devise_for :users
  root 'home#home'

  resources :tasks
  resources :sports
  resources :services
  resources :profiles
  resources :bixes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
