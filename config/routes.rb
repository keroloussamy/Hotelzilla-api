Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resource :users
  post '/auth/login', to: 'authentication#login'
  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api, defaults: { format: :json} do
    resources :hotels, only: [:destroy]


  
    # post 'users/register', to: 'authentication#register'
    # post 'users/login', to: 'authentication#login'
    # get 'posts', to: 'api#posts_index'
    # get 'comments', to: 'api#list_comments'
    # post 'new_comment', to: 'api#create_comment'
  end
end
