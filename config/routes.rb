Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  post '/auth/login', to: 'authentication#login'
  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api, defaults: { format: :json} do
    resources :hotels do
      resources :rooms 
    end

    resources :cities

  end
end
