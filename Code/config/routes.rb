Rails.application.routes.draw do
  root 'pages#home'
  
  get 'admin', to:'pages#admin'


  resources :users
  resources :bixes
  resources :tasks
  resources :teams

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
