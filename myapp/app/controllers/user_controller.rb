class UserController < ApplicationController
	def list
		@users = User.all	
	end

	def new

	end

	def create
		user = User.new(name: params[:name] , email: params[:email] ,password: params[:password])
		if user.save
			redirect_to :controller => 'sessions' , :action => 'new'
		else
			render :action => 'new'
		end

	end

	def user_params
		params.require(:user).permit(:name , :email , :password)
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to 'list'
	end

end
