class ApplicationController < ActionController::API
   include ActionController::Cookies
   before_action :authorize
 
   private
 
   def authorize
      token = request.headers['Authorization']&.split(' ')&.last
    
      if token.nil?
        render json: { error: 'No token provided' }, status: :unauthorized
        return
      end
    
      begin
        decoded_token = JWT.decode(token, '45678', true, { algorithm: 'HS256' })
        user_id = decoded_token.first['user_id']
        @current_user = User.find(user_id)
      rescue JWT::DecodeError => e
        render json: { error: 'Invalid token' }, status: :unauthorized
        return
      rescue ActiveRecord::RecordNotFound => e
        render json: { error: 'User not found' }, status: :unauthorized
        return
      end
    end
    
    
 end
 