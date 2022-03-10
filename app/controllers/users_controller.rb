class UsersController < ApplicationController
	def login
		@user = User.new
	end

	def new_session
		@user = User.find_by_email(user_params[:email])

		if @user.nil?
			redirect_to login_path, notice: "The user doesn't exists"
		elsif @user.valid_password?(user_params[:password])
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

	private
	def user_params
		params.require(:user).permit(:email, :password)
	end

end
