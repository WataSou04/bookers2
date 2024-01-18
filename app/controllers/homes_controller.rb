class HomesController < ApplicationController
  def top
    @user = current_user
    if user_signed_in?
      user_path(@user.id)
    end
  end
  
  def about
  end
end
