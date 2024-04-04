Rails.application.routes.draw do
  # Routes for users
  resources :users, only: [:create, :index, :show] do
    get "/current_user", to:"users#current_user"
  end

  
resources :videos do
  resources :comments
end





  # Routes for questions (if needed)
  # resources :questions, only: [:index, :show]
  get "/current_user", to: "users#current_user"

  # Custom routes for audio and video questions
  resources :questions, only: [:index]


  post "/auth/login", to:"session#login"
  delete "/auth/logout", to:"session#logout"
end
