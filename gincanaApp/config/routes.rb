Rails.application.routes.draw do
  resources :newcomer_sends_tasks
  resources :teams
  devise_for :users
  root 'home#home'
  get 'select_sports',to: "sport_interests_newcomer#select_sports"
  get 'newcomer_sports_index',to: "sport_interests_newcomer#newcomer_sports_index"
  get 'envios',to: "home#envios"

  put 'mark_sport', to: 'sport_interests_newcomer#create_array', as: :mark_sports 

  resources :tasks
  resources :sports
  resources :services
  resources :profiles
  resources :newcomers
  resources :newcomer_sends_tasks
  resources :sport_interests_newcomer
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
