class UsersController < ApplicationController
    skip_before_action :authorize, only: [:create, :current_user]
  
    # Get current logged-in user
    def current_user
      user = User.includes(videos: :comments).find_by(id: session[:user_id])
  
      if user
        render json: user, include: { videos: { include: :comments } }
      else
        render json: { error: "Not logged in" }, status: :not_found
      end
    end
  
    # Get all users
    def index
      users = User.all
      render json: users, include: :reviews
    end
  
    # Get user by id
    def show
      user = User.includes(:reviews).find_by(id: params[:id])
      render json: user, include: :reviews
    end
  
    # Create new user
    def create
      if @current_user
        render json: { error: "You are already logged in" }, status: :unprocessable_entity
      else
        user = User.create(user_params)
    
        if user.valid?
          render json: { success: "User created successfully" }
        else
          render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
      end
    end
  
    private
  
    def user_params
      params.permit(:username, :email, :password)
    end
  end
  