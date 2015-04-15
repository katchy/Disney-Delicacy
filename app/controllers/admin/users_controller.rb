class Admin::UsersController < ApplicationController
  
  def index
   @user = User.all.page(params[:page]).per(5)
  end

  def create
   @user = User.new(user_params)

      if @user.save
        redirect_to admin_user_path, notice: "#{@user.firstname} was submitted successfully!"
      else
        render :new
      end
  end

  def new
    @user = User.new
  end

  def edit
    @silly = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to admin_user_path(@user)
    else
      render :edit
    end

  end

  def show
     @user = User.find(params[:id])

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
     UserMailer.withdraw_user_email(@user).deliver
    redirect_to admin_users_path
  end

  def user_params
    params.require(:user).permit(
      :email, :password, :password_confirmation, :firstname, :lastname, :admin
    )
  end

end

