class ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :edit, :destroy]
  def index
  end

  def show
  end

  def new
    @child = Child.new
  end

  def create
   
  end

  def edit
  end

  def update
  end

  def destroy
  
  end

  private
  def set_child
    @child = Child.find(params[:id])
  end
  def child_params
    params.require(:child).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation)
  end
end
