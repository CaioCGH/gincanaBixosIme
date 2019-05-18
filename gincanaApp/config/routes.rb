Rails.application.routes.draw do
  resources :bixe_sends_tasks
  resources :teams
  devise_for :users
  root 'home#home'

  resources :tasks
  resources :sports
  resources :services
  resources :profiles
  resources :bixes
  resources :bixe_sends_tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
