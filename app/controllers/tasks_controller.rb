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
    @task = Task.new(form_params)
    @task.save!
    redirect_to task_path(@task)
  end

  private

  def form_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
