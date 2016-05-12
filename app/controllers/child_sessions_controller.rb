class ChildSessionsController < ApplicationController
  include SessionsHelper
  respond_to :html

  def new
  end

  def create
    child = Child.find_by(username: params[:session][:username])
    if child && child.authenticate(params[:session][:password])
      log_in(child)
      flash.notice = "Logged in"
      respond_with child, location: children_path
    else
      set_flash_message
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end

  private 

  def set_flash_message
    flash.now.notice = "Your username or password is incorrect"
    redirect_to child_login_path
  end
end
