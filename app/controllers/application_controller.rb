class ApplicationController < ActionController::API

	include ActionController::HttpAuthentication::Token::ControllerMethods
	
 include Response, ExceptionHandler, Authenticate
end
