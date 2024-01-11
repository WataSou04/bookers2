class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @books = @user.book
  end

  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    @user.update(book_params)
    redirect_to user_path(book.id)
  end
  
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
