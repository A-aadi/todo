class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new 
    @task = Task.new
  end

  def create
    @task = Task.create(params.require(:task).permit(:name, :description, :priority))
    redirect_to task_path(@task.id)
  end
  
  def show
    @task = Task.find(params[:id])
  end
  
end
