Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resource :users
  post '/auth/login', to: 'authentication#login'
  # Defines the root path route ("/")
  # root "articles#index"
end
