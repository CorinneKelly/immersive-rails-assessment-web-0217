Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :guests
  resources :episodes
  resources :application
  resources :users
  resources :sessions
  get '/', to: 'application#index'
end
