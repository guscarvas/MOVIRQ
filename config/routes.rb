Rails.application.routes.draw do
  get 'users/new'
  get 'sobre_nos/index'
  get 'aaa/index'
  resources :reservas
  resources :atleticas
  root 'atleticas#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
