Rails.application.routes.draw do
  root 'pages#home'
  
  get 'user/index'
  resources :users
  resources :bixes

  get 'bixes/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
