Rails.application.routes.draw do
  # Routes for the User account:
  get "/user_sign_up", to: "user_authentication#sign_up_form"
  post "/insert_user", to: "user_authentication#create"
  get "/edit_user_profile", to: "user_authentication#edit_profile_form"
  post "/modify_user", to: "user_authentication#update"
  get "/cancel_user_account", to: "user_authentication#destroy"
  get "/user_sign_in", to: "user_authentication#sign_in_form"
  post "/user_verify_credentials", to: "user_authentication#create_cookie"
  get "/user_sign_out", to: "user_authentication#destroy_cookies"
  get "/profile", to: "profile#show", as: "user_profile"

  # TODO: fix later
  # authenticated :user do
  #   root to: "users#dashboard", as: "user_dashboard"
  # end

  # Routes for the Outfit clothing resource:
  post "/insert_outfit_clothing", to: "outfit_clothings#create"
  get "/outfit_clothings", to: "outfit_clothings#index"
  get "/outfit_clothings/:path_id", to: "outfit_clothings#show"
  post "/modify_outfit_clothing/:path_id", to: "outfit_clothings#update"
  get "/delete_outfit_clothing/:path_id", to: "outfit_clothings#destroy"

  # Routes for the Outfit resource:
  post "/insert_outfit", to: "outfits#create"
  get "/outfits", to: "outfits#index"
  get "/outfits/:path_id", to: "outfits#show"
  post "/modify_outfit/:path_id", to: "outfits#update"
  get "/delete_outfit/:path_id", to: "outfits#destroy"

  # Routes for the Clothing resource:
  post "/insert_clothing", to: "clothings#create"
  get "/clothings", to: "clothings#index"
  get "/clothings/:path_id", to: "clothings#show"
  post "/modify_clothing/:path_id", to: "clothings#update"
  get "/delete_clothing/:path_id", to: "clothings#destroy"

  # Other routes...

  get "/home", to: "pages#home"
  get "/dashboard", to: "dashboard#index"
  get '/generate', to: 'generate#index', as: 'generate'
  get "/upload", to: "upload#index", as: "upload"
  resources :clothings, only: [:new, :create]

  # Catch-all route
  # match "*path", to: "pages#home", via: :all
end
