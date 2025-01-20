class UsersController < ApplicationController
  def show
    @user= User.find(params[:id])
  end
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path, notice: 'User deleted'
  end
  def update_role
    @user = User.find(params[:id])
  
    if @user.update(role: @user.role == 'admin' ? 'user' : 'admin')
      redirect_to user_path(@user), notice: "User role updated to #{@user.role}."
    else
      redirect_to user_path(@user), alert: 'Failed to update the user role.'
    end
  end
end