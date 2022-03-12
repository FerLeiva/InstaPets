class ApplicationController < ActionController::Base
	protect_from_forgery with: :null_session

	include ActionController::HttpAuthentication::Token::ControllerMethods
	before_action :authenticate, if: -> { request.format.json? }

	def authenticate!
		@current_user || render_unauthorized
	end

	protected
	def authenticate
		authenticate_token
	end

	def authenticate_token
		authenticate_with_http_token do |token, options|
			@current_user = User.find_by(api_key: token)
		end
	end

	def render_unauthorized
		render json: {error: 'You need to sign in or sign up before continuing.'}, status: :unauthorized #401
		
	end
end
