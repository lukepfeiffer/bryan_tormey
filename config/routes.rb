Rails.application.routes.draw do
  root to: 'pages#home'
  resources :images, only: [:index, :edit, :new]
end
