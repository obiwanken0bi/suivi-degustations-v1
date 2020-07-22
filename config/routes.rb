Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :users do
    resources :tastings#, only: [ :index, :new, :create ]
  end
  # resources :tastings, only: [ :show, :edit, :update, :destroy ]
end
