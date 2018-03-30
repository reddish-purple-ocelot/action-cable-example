Rails.application.routes.draw do

  root 'page#index'

  mount ActionCable.server, at: '/cable'

  resources :messages, only: :create
  resources :chatrooms, only: :show
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
