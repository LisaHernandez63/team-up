Rails.application.routes.draw do
  root "pages#index"
  devise_for :users
  resources :teams, only: [:index, :show, :new, :create]
  resources :players, only: [:show]
  resources :workouts, only: [:index, :show, :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
