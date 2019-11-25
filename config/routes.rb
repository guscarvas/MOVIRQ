Rails.application.routes.draw do
  
  resources :reserva_aceita
  resources :solicitacao_pontuals
  get 'solicitacao_pontuals/index'
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
  resources :quadras
  get 'laausp/index'

  get 'tabela' => 'tabela#index'
  post 'password/forgot' => 'password#forgot'
  post 'password/reset'  => 'password#reset'

  get 'resetReservas' => 'reservas#reset'
  get 'criaLaausp' => 'users#criaLaausp'
  #get 'ver_reservas/index', as 'ver_reservas_index'
  
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
