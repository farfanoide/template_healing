class UsersController < ApplicationController

  add_flash_types :error

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: t('users.create.success')
    else
      render action: 'new', error: t('users.create.error')
    end
  end

  def destroy

  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  private
  def user_params
    params.require(:user).permit(:id, :nickname, :email, :admin, :password, :password_confirmation, :_destroy)
  end
end
