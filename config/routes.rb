Rails.application.routes.draw do
  root 'application#index'
  resources :users
  get '/auth/:provider/callback', to: 'sessions#create'
end
