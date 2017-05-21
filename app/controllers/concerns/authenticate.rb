module Authenticate
	include ActionController::HttpAuthentication::Token::ControllerMethods
	
	protected 

	def authenticate
    authenticate_token || render_unauthorized
  end

	def authenticate_token
    authenticate_with_http_token do |token, options|
      @current_user = User.find_by(auth_token: token)
    end
  end

  def render_unauthorized
    self.headers['Authenticate'] = 'Token realm="Application-API v1"'
    render json: 'Unauthorized', status: 401
  end 

end