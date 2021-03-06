Rails.application.routes.draw do
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  post '/auth/login', to: 'authentication#login'
  get '/api/hotelbycity/:id', to: 'api/hotels#hotel_by_city'

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api, defaults: { format: :json} do
    resources :hotels

    resources :reservations

    resources :room_types, only: [:index]

    resources :cities, only: [:index]

  end
end
