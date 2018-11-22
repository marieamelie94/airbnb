Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get '/pages/home' => 'pages#home'
  get '/pages/:page' => 'pages#show'
  get '/users/:user_id/flats' => 'flats#user_flats'

  resources :flats, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :create]
  end

  resources :users, only: [:index, :show] do
    resources :bookings, only: [:index, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
