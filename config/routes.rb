Rails.application.routes.draw do
  root "users#index"
  get "signup", to: "users#new" 
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  get "logout" => "sessions#destroy"
  get "auth/:provider/callback", to: "sessions#google_fb_create"
  
  resources :users, except:[:new]
  
  resources :restaurants

  resources :restaurant_categories

  resources :food_items

  resources :book_tables, except: [:show]
  get "table_booked", to: "book_tables#show"
 
  post "new_order", to: "orders#create"
  get "order", to: "orders#show", as: "order_show"
  
  get "cart", to: "carts#show"

  post "cart_items/add"
  resources :cart_items, only: [:update, :destroy]

  get "request", to: "pages#approve"
  patch "request", to: "pages#approve_request"
  delete "delete_request", to: "pages#destroy"
  get "error", to: "pages#show"
  get "menu", to: "pages#menu"
  get "restaurant_list", to: "pages#index"
  get "upload_image", to: "pages#edit"
  patch "upload_image", to: "pages#update"
  get "map", to: "pages#map"

  resources :admin_dashboards

  resources :reviews

end