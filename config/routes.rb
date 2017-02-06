Rails.application.routes.draw do
  root "pages#index"
  devise_for :users
  resources :teams, only: [:index, :show, :new, :create]
  resources :players, only: [:show] do
    resources :workouts, only: [:index, :new, :create] do
      resources :exercises, only: [:index, :new, :create]
    end
  end
  resources :workouts, only: [:index, :show, :new, :create] do
    resources :exercises, only: [:index, :new, :create]
  end
  resources :exercises, only: [:index, :show, :new, :create]
end
