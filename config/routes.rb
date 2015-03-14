Rails.application.routes.draw do
  root 'smithy#index'
  get '/about', to: 'pages#about'
  get '/search', to: 'smithy#search'

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  resources :sessions, only: [:create, :destroy]

  post '/tweet', to: 'tweeting#create', as: 'tweet'
    # resources :tweets, only: [:new, :create]
    resource :home, only: [:show]

end
