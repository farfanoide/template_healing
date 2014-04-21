class SessionsController < ApplicationController

  def create
    if session_params[:login].match(/@/)
      user = User.find_by_email(session_params[:login])
    else
      user = User.find_by_nickname(session_params[:login])
    end
    if user && user.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to :root, notice: t('login.success')
    else
      redirect_to :back, error: t('login.error')
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to :root, notice: t('login.logout')
  end

  def new

  end

  private

  def session_params
    params.require(:sessions).permit(:login, :password)
  end

end
