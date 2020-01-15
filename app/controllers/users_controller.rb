class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @posts = @user.posts.page(params[:page]).includes(:user).order("created_at DESC").per(10)
  end
end
