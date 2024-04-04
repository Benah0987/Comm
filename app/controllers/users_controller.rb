class UsersController < ApplicationController
    skip_before_action :authorize, only: [:create, :current_user]
  
    # Get current logged-in user
    def current_user
      token = request.headers['Authorization']&.split(' ')&.last
  
      if token.nil?
        render json: { error: "No token provided" }, status: :unauthorized
        return
      end
  
      begin
        decoded_token = JWT.decode(token, '45678', true, algorithm: 'HS256')
        user_id = decoded_token.first['user_id']
        user = User.includes(videos: :comments).find_by(id: user_id)
        
        if user
          render json: user, include: { videos: { include: :comments } }
        else
          render json: { error: "User not found" }, status: :not_found
        end
      rescue JWT::DecodeError => e
        render json: { error: "Invalid token" }, status: :unauthorized
      end
    end
    
  
    # Get all users
    def index
      users = User.all
      render json: users, include: :comments
    end
  
    # Get user by id
    def show
      user = User.includes(:comments).find_by(id: params[:id])
      render json: user, include: :comments
    end
  
    # Create new user
    def current_user
      token = request.headers['Authorization']&.split(' ')&.last
  
      if token.nil?
        render json: { error: "No token provided" }, status: :unauthorized
        return
      end
  
      begin
        decoded_token = JWT.decode(token, '45678', true, algorithm: 'HS256')
        user_id = decoded_token.first['user_id']
        user = User.includes(videos: :comments).find_by(id: user_id)
        
        if user
          render json: user, include: { videos: { include: :comments } }
        else
          render json: { error: "User not found" }, status: :not_found
        end
      rescue JWT::ExpiredSignature
        render json: { error: "Session has expired. Please log in again." }, status: :unauthorized
      rescue JWT::DecodeError => e
        render json: { error: "Invalid token" }, status: :unauthorized
      end
    end

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
  