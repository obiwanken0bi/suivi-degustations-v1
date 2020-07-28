Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :users do
    resources :tastings#, only: [ :index, :new, :create ]
    resources :beer_tastings
    resources :wine_tastings
  end
  # resources :tastings, only: [ :show, :edit, :update, :destroy ]
end
