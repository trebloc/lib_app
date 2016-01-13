Rails.application.routes.draw do
  root to: "users#index"

  get "/users", to: "users#index", as: "users"
  get "/users/new", to: "users#new", as: "new_user"  
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show", as: "user"  
  get "/users/:user_id/libraries", to: "library_users#index", as: "user_libraries"  
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy" # <-- strictly speaking this isn't RESTful (it should be a DELETE not GET), but it's super conveient to do it this way
  get "/libraries", to: "libraries#index"
  get "/libraries/new", to: "libraries#new", as: "new_library"
  get "/libraries/:id", to: "libraries#show", as: "library"  
  post "/libraries", to: "libraries#create"
  post "/sessions", to: "sessions#create"
  post "/libraries/:library_id/users", to: "library_users#create", as: "library_users"     
end
