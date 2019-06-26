Rails.application.routes.draw do
  resources :newcomer_sends_tasks
  resources :teams
  devise_for :users
  root 'home#home'
  get 'select_sports',to: "sport_interests_newcomer#select_sports"
  get 'newcomer_sports_index',to: "sport_interests_newcomer#newcomer_sports_index"

  put 'mark_sport', to: 'sport_interests_newcomer#create_array', as: :mark_sports 
  put 'validate_newcomer', to: 'newcomers#validate_newcomer', as: :validate_newcomer 
  put 'invalidate_newcomer', to: 'newcomers#invalidate_newcomer', as: :invalidate_newcomer 
  put 'attribute_score', to: 'tasks#score_each_team', as: :attribute_score 

  resources :tasks do
    collection do
      get :scoring
    end
  end

  resources :sports
  resources :newcomers
  resources :newcomer_sends_tasks
  resources :sport_interests_newcomer
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
