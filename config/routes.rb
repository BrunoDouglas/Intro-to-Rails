Rails.application.routes.draw do

  get 'about', to: 'about#index'
  get 'neighbourhoods/:id/vehicles',  to: 'neighbourhoods#vehicles'
  get 'neighbourhoods/:id/people',    to: 'neighbourhoods#people'

  get 'people/:id/neighbourhoods',  to: 'people#neighbourhoods'

  resources :neighbourhoods,  only: [:index, :show]
  resources :people,          only: [:index, :show]
  resources :vehicles,        only: [:index, :show]

  root to: 'neighbourhoods#index'
end
