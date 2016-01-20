class SessionsController < ApplicationController
  def new

  end

  def create
    parent = Parent.find_by(username: params[:session][:username])
    puts parent.inspect
    if parent && parent.authenticate(params[:session][:password])
      session[:parent_id] = parent.id
      flash[:logged_in] = "Logged in"
      redirect_to parents_path
    else
      flash[:error] = "Your username or password is incorrect"
      render 'new'
    end
  end

  def destroy
    session[:parent_id] = nil
    redirect_to root_path
  end
end

