Rails.application.routes.draw do
  root "pages#show"
  devise_for :users, controllers: {
        sessions: 'users/sessions'
        confirmations: 'users/confirmations'
        omniauth: 'users/omniauth'
        passwords: 'users/passwords'
        unlocks: 'users/unlocks'
      }
  resources :users, only: [:show]
  resources :pages, only: [:show]
  resources :teams, only: [:index, :show, :new, :create] do
    resources :players, only: [:show, :new, :create]
  end
  resources :players, only: [:show, :new, :create] do
    resources :workouts, only: [:index, :new, :create] do
      resources :exercises, only: [:index, :new, :create]
    end
  end
  resources :workouts, only: [:index, :show, :new, :create] do
    resources :exercises, only: [:index, :new, :create]
  end
  resources :exercises, only: [:index, :show, :new, :create]
end
