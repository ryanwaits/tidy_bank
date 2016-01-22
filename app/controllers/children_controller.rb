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
    @child = Child.new(child_params)
    @child.parent_id = session[:parent_id]
    @balance = Balance.create(current_balance: 0, balance_due: 0)
    @child.balance_id = @balance.id

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
    params.require(:child).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation)
  end

end
