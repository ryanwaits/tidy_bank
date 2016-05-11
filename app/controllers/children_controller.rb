class ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :edit, :destroy]
  def index
    @tasks = Task.where(child_id: session[:log_in_child_id]).all
  end

  def show
  end

  def new
    @child = Child.new
  end

  def create
    @child = Child.new
    @child.parent_id = session[:parent_id]
    @child.balance = 0.0
    @child.update_attributes(child_params)
    if @child.save
      session[:child_id] = @child.id
      redirect_to parents_path
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
    params.require(:child).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation, :balance)
  end

end
