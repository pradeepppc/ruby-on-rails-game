Rails.application.routes.draw do
  get 'sessions/new'

  get 'user/list'
  post 'adduser' , to: 'user#create'
  get 'user/new'
  get 'pages/index'
  get 'profile' , to: 'pages#show'
  get 'login' , to: 'sessions#new'
  delete 'logout' , to: 'sessions#destroy'
  post 'login' , to: 'sessions#create'
  root 'pages#index'
  get 'destroy' , to: 'user#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
