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
    @child = Child.create(child_params)
    if @child.save
      @child.parent_id = session[:parent_id]
      @balance = Balance.create(current_balance: 0, balance_due: 0)
      @child.balance_id = @balance.id
      session[:child_id] = @child.id
      redirect_to parents_path
    else
      flash[:notice] = "Please fill out the form!"
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @child.destroy
    redirect_to parents_path
  end

  private
  def set_child
    @child = Child.find(params[:id])
  end
  def child_params
    params.require(:child).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation)
  end
end
