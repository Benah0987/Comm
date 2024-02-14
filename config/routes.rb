Rails.application.routes.draw do
  # Routes for users
  resources :users, only: [:create, :index, :show] do
    get "/current_user", to:"users#current_user"
  end

  # Routes for videos
  # Routes for videos
  resources :videos, only: [:index, :show, :create, :update, :destroy] do
    resources :comments, only: [:index, :create, :update, :destroy]
  end


  # Routes for questions (if needed)
  # resources :questions, only: [:index, :show]

  # Custom routes for audio and video questions
  resources :questions, only: [:index]
  get "/current_user", to:"users#current_user"

  post "/auth/login", to:"session#login"
  delete "/auth/logout", to:"session#logout"
end
