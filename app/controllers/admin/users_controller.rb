class Admin::UsersController < ApplicationController
  
  def index
   @user = User.all.page(params[:page]).per(5)
  end

end

