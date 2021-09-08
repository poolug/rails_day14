class UsersController < ApplicationController
    before_action :autorize_admin!, only: [:dashboard]
    
  def show
    @user = User.find(params[:id])
    @stories = @user.stories
  end

  def dashboard
    @users = User.all
  end
  
end
