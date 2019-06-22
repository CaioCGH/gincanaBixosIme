Rails.application.routes.draw do
  resources :bixe_sends_tasks
  resources :teams
  devise_for :users
  root 'home#home'
  get 'select_sports',to: "rel_bixe_sports#select_sports"
  get 'bixe_sports_index',to: "rel_bixe_sports#bixe_sports_index"
  get 'envios',to: "home#envios"

  put 'mark_sport', to: 'rel_bixe_sports#create_array', as: :mark_sports 

  resources :tasks
  resources :sports
  resources :services
  resources :profiles
  resources :bixes
  resources :bixe_sends_tasks
  resources :rel_bixe_sports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
