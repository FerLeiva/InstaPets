class UsersController < ApplicationController
	def login
	end

	def new_session
		@user = User.find_by_email(params[:email])

		if @user.nil?
			redirect_to login_path, notice: "The user doesn't exists"
		elsif @user.valid_password?(params[:password])
			sign_in(:user, @user)
			redirect_to :root, notice: "Logged in successfully"
		else
		redirect_to login_path, alert: "Wrong password"
		end
	end

	def logout
		sign_out
		redirect_to :root, notice: "Logged out successfully"
	end
end
