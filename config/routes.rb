Rails.application.routes.draw do

  get 'vehicles/index'
  get 'vehicles/show'
  get 'vehicles/people'
  get 'vehicles/neighbourhoods'
  get 'about', to: 'about#index'
  get 'neighbourhoods/:id/vehicles',  to: 'neighbourhoods#vehicles'
  get 'neighbourhoods/:id/people',    to: 'neighbourhoods#people'

  get 'people/:id/neighbourhoods',  to: 'people#neighbourhoods'

  resources :neighbourhoods,  only: [:index, :show]
  resources :people,          only: [:index, :show]
  resources :vehicles,        only: [:index, :show]

  root to: 'neighbourhoods#index'
end
