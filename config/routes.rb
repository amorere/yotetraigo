Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/misautos', to: 'cars#misautos'
  get '/miautodeviaje', to: 'cars#miautodeviaje'
  get '/misapp', to: 'applications#misapp'

  resources :cars do
    resources :bookings, only: %i[new create]
    resources :applications, only: %i[new create]
  end
  resources :bookings, only: %i[index show edit update destroy] do
    resources :reviews, only: %i[new create]
  end

  resources :applications, only: %i[index show edit update destroy]
  resources :reviews, only: %i[show destroy]
end
