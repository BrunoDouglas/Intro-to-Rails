Rails.application.routes.draw do

  get 'about', to: 'about#index'
  resources :neighbourhoods,  only: [:index, :show]
  resources :owners,          only: [:index, :show]
  resources :vehicles,        only: [:index, :show]

  root to: 'neighbourhoods#index'
end
