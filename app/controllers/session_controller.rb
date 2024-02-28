class SessionController < ApplicationController
  skip_before_action :authorize, only: [:login]

  # login function
  def login
    email = params[:email]
    password = params[:password]
    
    user = User.find_by(email: email)
   
    if user && user.authenticate(password)
      # Encode the user's ID into the token
      token = encode_token({ user_id: user.id })
      render json: { token: token }
    else
      render json: { error: "Wrong email address/password" }, status: :unauthorized
    end
  end

  private

  def encode_token(payload)
    JWT.encode(payload, '45678', 'HS256')
  end
  
end
