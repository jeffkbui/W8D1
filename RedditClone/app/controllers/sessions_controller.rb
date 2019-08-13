class SessionsController < ApplicationController

  def new
    render :new
  end

  def create
    user = User.find_user(
      params[:user][:username],
      params[:user][:password]
    )

    if user
      login(user)
      redirect_to subs_url
    else
      flash.now[:errors] = ["Invalid Username or Password"]
      render :new
    end
  end

  def destroy
    logout
    redirect_to new_session_url
  end

end
