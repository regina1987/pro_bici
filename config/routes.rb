Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'products/index' , to: 'products#index'
     get 'products/new', to: 'products#new', as:'products_new'
     get 'products/:id', to: 'products#show', as: 'products_show'
     post 'products', to: 'products#create'
     delete 'products/:id', to: 'products#destroy', as: 'products_delete'
     get 'products/:id/edit', to: 'products#edit', as:'edit_products'
     patch 'products/:id', to: 'products#update', as:'product'

     get 'categories/index', to: 'categories#index'
     get 'categories/:id', to: 'categories#show', as: 'categories_show'
     get 'categories/new', to: 'categories#new', as:'categories_new'
     post 'categories', to: 'categories#create'
     delete 'categories/:id', to: 'categories#destroy', as: 'categories_delete'
     get 'categories/:id/edit', to: 'categories#edit', as:'categories_user'
     patch 'categories/:id', to: 'categories#update', as:'category'

  get 'home/index', to: 'home#index'
  root to: "home#index"

end
