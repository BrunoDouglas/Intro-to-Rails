Rails.application.routes.draw do
  get 'about', to: 'about#index'
  resources :neighbourhoods, only: [:index, :show]

  root to: 'neighbourhoods#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
