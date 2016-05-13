class ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :edit, :destroy]
  
  def index
    @tasks = Child.find(session[:child_id]).tasks
  end

  def show
  end

  def new
    @child = Child.new
  end

  def create
    @child = Child.new
    @child.parent_id = session[:parent_id]
    @child.update_attributes(child_params)
    if @child.save
      session[:child_id] = @child.id
      respond_with @child, location: parents_path
    else
      render 'new'
    end

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
    params.require(:child).permit(:first_name, :last_name, :balance, :email, :username, :password, :password_confirmation)
  end

end
