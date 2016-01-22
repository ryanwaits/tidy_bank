class TasksController < ApplicationController
  def index
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.completed = false

    if @task.save
      redirect_to parents_path
    else
      flash[:notice] = "Please fill out the form!"
      redirect_to new_task_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:description, :price, :due_date, :child_id)
  end
end
