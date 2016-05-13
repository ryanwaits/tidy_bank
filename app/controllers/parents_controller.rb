class ParentsController < ApplicationController
  include SessionsHelper
  
  before_action :set_parent, only: [:show, :edit, :destroy]
  before_action :get_children, only: [:index]
  
  def index

  end

  def show
    @task = Task.new
  end


  def new
    @parent = Parent.new
  end

  def create
    @parent = Parent.create(parent_params)

    if @parent.save
      log_in(@parent)
      flash.notice = "Logged in"
      respond_with @parent, location: parents_path
    else
      flash.notice = "Please fill out the form!"
      redirect_to new_parent_path
    end
  end

   def edit
    @parent = Parent.find(params[:id])
   end

def update
  @parent = Parent.update(params[:id], parent_params)

  if @parent.save
  respond_with @parent, location: parents_path
  flash.notice = "Your account has been updated."
    else
      flash.notice = "Please fill out the form!"
      redirect_to edit_parent_path
    end
  end


  private
  def set_parent
    @parent = Parent.find(params[:id])
  end

  def parent_params
    params.require(:parent).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation)
  end

  def get_children
    @children = Child.where(parent_id: session[:parent_id])
  end

end


