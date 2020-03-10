Rails.application.routes.draw do
    devise_for :users, controllers: {
    registrations: 'user/registrations'
  }
 
    root to: "pages#index"

    get '/', to: 'pages#index', as: 'homepage'
    get '/about', to: 'pages#about', as: 'about'
    get '/option', to: 'pages#option', as: 'option'
    get '/profile/:id', to: 'pages#profile', as: 'profile'
  
    #show list
    get '/items', to: 'items#index', as: 'items'
    #always put an ailas as: on a get method

    #show all items for sale
    get '/items/all', to: 'items#all', as: 'all_items'
 
    #Create items
    get '/items/new', to: 'items#new', as: 'new_item'
    post '/items', to: 'items#create'
  
    # #Read items
    get '/items/:id', to: 'items#show', as: 'item'
 
    #Edit items
    get '/items/:id/edit', to: 'items#edit', as: 'edit_item'
   
   
    #Update items
    patch '/items/:id', to: 'items#update'
    put '/items/:id', to: 'items#update'
 
    #Delete items
    delete '/items/:id', to: 'items#destroy', as: 'destroy_item'

    #order
  get 'orders/new', to: "orders#new", as: "new_order"
  get 'orders/complete/:id', to: "orders#complete", as: "completed_order"
  get 'orders/receipt/:id', to: "orders#receipt", as: "purchase_receipt"



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
