Rails.application.routes.draw do
  
  get 'welcome/index'
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
  get 'laausp/index'

  post 'password/forgot', to: 'password#forgot'
  post 'password/reset', to: 'password#reset'

  get 'resetReservas' => 'reservas#reset'
  get 'criaLaausp' => 'users#criaLaausp'
  #get 'ver_reservas/index', as 'ver_reservas_index'
  
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
