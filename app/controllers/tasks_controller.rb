class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def add
    @tasks = Task.new
  end

  def create
    @tasks = Task.new
  end
end
