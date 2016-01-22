class SessionsController < ApplicationController
  include SessionsHelper
  def new

  end

  def create
    parent = Parent.find_by(username: params[:session][:username])
    if parent && parent.authenticate(params[:session][:password])
      log_in(parent)
      flash[:logged_in] = "Logged in"
      redirect_to parents_path
    else
      flash[:error] = "Your username or password is incorrect"
      render 'new'
    end
  end

  def destroy
    session[:parent_id] = nil
    session[:child_id] = nil
    redirect_to root_path
  end
end

