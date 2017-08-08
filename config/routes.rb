Rails.application.routes.draw do
  root to: 'pages#home'
  resources :images

  get '/sign_in', to: 'pages#sign_in'
  post '/sign_in', to: 'sessions#create'

  delete '/sign_out', to: 'sessions#destroy'
end
