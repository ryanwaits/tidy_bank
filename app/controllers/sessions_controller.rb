class SessionsController < ApplicationController
  include SessionsHelper

  def new

  end

  def create
    parent = Parent.find_by(username: params[:session][:username])
    if parent && parent.authenticate(params[:session][:password])
      log_in(parent)
      flash.notice = "Logged in"
      respond_with parent, location: parents_path
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
    render 'new'
  end
end

