class ParentsController < ApplicationController
  def index
    @parent = session[:parent_name]
  end

  def show
  end

  def new
    @parent = Parent.new
  end

  def create
    @parent = Parent.create(parent_params)
    if @parent.save
      redirect_to parent_path(@parent)
    else
      flash[:notice] = "Please fill out the form!"
      redirect_to new_parent_path
    end
  end

  private
  def parent_params
    params.require(:parent).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation)
  end

end
