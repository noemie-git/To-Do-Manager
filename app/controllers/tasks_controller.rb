class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    # go to the show page
    redirect_to task_path(@task)
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    # find the task we're updating
    @task.update(task_params)

    redirect_to task_path(@task)
  end

  private

  def task_params
    # STRONG PARAMS for security
    params.require(:task).permit(:title, :details, :completed)
  end
end
