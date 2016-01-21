class ParentsController < ApplicationController
  include SessionsHelper
  def index
    @parent = session[:parent_id]
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
      redirect_to parents_path
    else
      flash[:notice] = "Please fill out the form!"
      redirect_to new_parent_path
    end
  end

   def edit
    @parent = Parent.find(params[:id])
   end

def update
  @parent = Parent.update(params[:id],parent_params)

  if @parent.save
  redirect_to parent_path(@parent)
    else
      flash[:notice] = "Please fill out the form!"
      redirect_to edit_parent_path
    end
  end


  private
  def parent_params
    params.require(:parent).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation)
  end

end


