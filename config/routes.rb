Rails.application.routes.draw do
  resources :categories
  resources :products
  resources :stores
  get 'home/index'
  root to: "home#index" 

  get 'products', to: 'products#index'
  get '/products/new', to:'products#new'
  post '/products', to:'products#create'
  get '/products/:id/edit', to: 'products#edit', as: "edit_product1"
  put '/products/:id', to: 'products#update'
  delete '/products/:id',to:'products#delete'

  get 'stores', to: 'stores#index'
  get '/products/new', to:'products#new'
  post '/products', to:'products#create'
  get '/stores/:id/edit', to: 'stores#edit', as: "edit_stores1"
  put '/stores/:id', to: 'stores#update'
  delete '/stores/:id',to:'stores#delete'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  get 'categories', to: 'categories#index'
  get '/categories/new', to:'categories#new', as: "category_new"
  post '/categories', to:'categories#create'
  get '/categories/:id/edit', to: 'categories#edit', as: "edit_categories1"
  put '/categories/:id', to: 'categories#update'
   delete '/categories/:id',to:'categories#delete'

end
