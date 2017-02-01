Rails.application.routes.draw do
  root "teams#index"
  devise_for :users
  resources :teams, only: [:index, :show]
  resources :players, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
