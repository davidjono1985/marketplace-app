Rails.application.routes.draw do
    devise_for :users, controllers: {
    registrations: 'user/registrations'
  }
 
  root to: "pages#index"

  get '/', to: 'pages#index', as: 'homepage'
  get '/about', to: 'pages#about', as: 'about'
  get '/option', to: 'pages#option', as: 'option'
  
  get '/items', to: 'items#index', as: 'items'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
