Rails.application.routes.draw do
  resources :items

  get 'users/:id', to: 'users#show'

  post 'register', to: 'users#create'
  post 'authenticate', to: 'authentication#authenticate'
end
