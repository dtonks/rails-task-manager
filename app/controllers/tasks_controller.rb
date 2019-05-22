class TasksController < ApplicationController
  def show
    @tasks = Task.all
  end

  def new # create
    @task = Task.new
  end

  def detail
    @task = Task.find(params[:id])
  end

  def create
    @tasks = Task.new(title: params[:task][:title],
                      details: params[:task][:details])
    @tasks.save
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(title: params[:task][:title],
                 details: params[:task][:details])
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end
end
