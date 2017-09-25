class SessionsController < ApplicationController
  include SessionsHelper

  def create

    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      login(@user)
      redirect_to root_url
    else
      @errors = ["Login Error! Try again."]
      render 'new'
    end
  end

  def destroy
    logout
    redirect_to root_url
  end
end
