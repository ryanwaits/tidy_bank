class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update]
  def show
    
  end

  def new
    @task = Task.new
    @child = Child.find_by_id(params[:child])
    @tasks = Task.where(child_id: @child).all
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash.notice = "Your task has been created!"
      redirect_to parents_path
    else
      flash.notice = "Please fill out the form!"
      redirect_to new_task_path
    end
  end

  def update
    @task.update_attributes(completed: true)
    flash.notice = 'Task complete!'
    redirect_to @task
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:description, :price, :due_date, :child_id, :completed)
  end
end
