Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'users/new'
  get 'sobre_nos/index'
  get 'aaa/index'
  resources :users
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'
  resources :reservas
  resources :atleticas
  
  root 'atleticas#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
