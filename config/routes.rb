Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/cancel_policy', to: 'pages#cancel_policy'
  get '/condiciones', to: 'pages#condiciones'
  get '/help', to: 'pages#help'
  # Defines the root path route ("/")
  # root "articles#index"
  get '/misautos', to: 'cars#misautos'
  get '/miautodeviaje', to: 'cars#miautodeviaje'
  get '/misapp', to: 'applications#misapp'
  get '/misbook', to: 'bookings#misbook'
  get '/applications/:id/offer', to: 'applications#offer', as: :offer
  patch '/applications/:id', to: 'applications#newoffer'
  get '/applications/:application_id/offertapp', to: 'offers#ofertapp', as: :ofertapp
  get '/offertappdriver', to: 'offers#ofertappdriver', as: :ofertappdriver
  patch '/offers/:id', to: 'offers#update', as: :updateoffer
  patch '/bookings/:id', to: 'bookings#update', as: :updatecomplete

  resources :cars do
    resources :bookings, only: %i[new create]
    resources :applications, only: %i[new create]
  end
  resources :bookings, only: %i[index show edit update destroy] do
    resources :reviews, only: %i[new create]
  end

  resources :applications, only: %i[index show edit update destroy] do
    resources :offers, only: %i[new create]
  end

  resources :reviews, only: %i[show destroy]
end
