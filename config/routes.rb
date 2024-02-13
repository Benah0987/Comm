Rails.application.routes.draw do
  # Routes for users
  resources :users, only: [:create, :index, :show] do
    get "/current_user", to:"users#current_user"
  end

  # Routes for videos
  resources :videos, only: [:create, :index, :show, :update, :destroy]

  # Routes for comments
  resources :comments, only: [:create, :index, :show, :update, :destroy]

  # Routes for questions (if needed)
  # resources :questions, only: [:index, :show]

  # Custom routes for audio and video questions
  get '/audio_questions', to: 'questions#audio_questions'
  get '/video_questions', to: 'questions#video_questions'
  get "/current_user", to:"users#current_user"

  post "/auth/login", to:"session#login"
  delete "/auth/logout", to:"session#logout"
end
