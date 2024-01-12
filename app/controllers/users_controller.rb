class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.book
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  def index
    @book = Book.new
    @user = User.all
  end
  
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
