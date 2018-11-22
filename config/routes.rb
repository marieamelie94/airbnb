Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get '/pages/:page' => 'pages#show'
  resources :flats, only: [:index, :show, :new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
