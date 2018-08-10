Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/wow', to: 'cars#wow'
  resources :cars

  # The Index Route/Action
  # get '/cars', to: 'cars#index'
  #
  #
  # # New Car (the form, and the create)
  # get '/cars/new', to: 'cars#new'
  # post '/cars', to: 'cars#create', as: 'new_car'
  #
  # get '/cars/:id', to: 'cars#show'
  #
  # # as keyword makes the 'car_path'
  # get '/cars/:id/edit', to: 'cars#edit'
  # patch '/cars/:id', to: 'cars#update', as: 'car'



end
