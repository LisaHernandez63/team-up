Rails.application.routes.draw do
  root "pages#index"
  devise_for :users
  resources :teams, only: [:index, :show, :new, :create]
  resources :players, only: [:show]
  resources :workouts, only: [:index, :show, :new, :create]
  resources :exercises, only: [:index, :show, :new, :create]
end
