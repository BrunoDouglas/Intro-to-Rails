Rails.application.routes.draw do

  get 'about', to: 'about#index'
  get 'neighbourhoods/:id/vehicles', to: 'neighbourhoods#vehicles'
  get 'neighbourhoods/:id/people', to: 'neighbourhoods#people'

  resources :neighbourhoods, only: [:index, :show]
  resources :people, only: [:index, :show]
  resources :vehicles, only: [:index, :show]

  root to: 'neighbourhoods#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
