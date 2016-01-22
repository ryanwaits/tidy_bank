class ChildSessionsController < ApplicationController
  include SessionsHelper

  def new
  end

  def create
    child = Child.find_by(username: params[:session][:username])
    if child && child.authenticate(params[:session][:password])
      child_log_in(child)
      flash[:logged_in] = "Logged in"
      redirect_to children_path
    else
      flash[:error] = "Your username or password is incorrect"
      redirect_to child_login_path
    end
  end

  def destroy
    session[:child_id] = nil
    session[:parent_id] = nil
    redirect_to root_path
  end
end
