Rails.application.routes.draw do
  root 'smithy#index'
  get '/about', to: 'pages#about'
  get '/search', to: 'wordnik#search'
  # post '/search', to: 'tweeting#new'
  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  post '/tweet', to: 'tweeting#create', as: 'tweet'
    # resources :tweets, only: [:new, :create]
    resources :sessions, only: [:create, :destroy]
    resource :home, only: [:show]

end
