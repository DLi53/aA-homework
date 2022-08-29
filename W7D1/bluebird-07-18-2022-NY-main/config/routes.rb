Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # --- Manually define routes: ---
  # get '/chirps', to: 'chirps#index'            # manually creates single route
  # get '/chirps/:id', to: 'chirps#show'         # `:id` is a wildcard
  # post '/chirps', to: 'chirps#create'
  # patch '/chirps/:id', to: 'chirps#update'
  # # put '/chirps/:id', to: 'chirps#update'
  # delete '/chirps/:id', to: 'chirps#destroy'

  # --- Shortcut for defining multiple routes with aliases: ---
  # resources :chirps, only: [:index, :show, :create, :update, :destroy]
  # resources :chirps, except: [:new, :edit] # same as above

  resources :chirps # create all 7 routes, including the :new and :edit
  resources :users, only: [:index, :show, :create, :update, :destroy, :edit, :new] # routes for users
end
