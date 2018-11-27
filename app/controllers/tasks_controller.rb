class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index           # GET /tasks
    @tasks = Task.all
  end

  #--------
  def show            # GET /tasks/:id
  end

  #--------
  def new             # GET /tasks/new
    # We'll see that in a moment.
    @task = Task.new
  end

  def create          # POST /tasks
    @task = Task.new(task_params)
    @task.save
    # Will raise ActiveModel::ForbiddenAttributesError

    # no need for app/views/tasks/create.html.erb
    redirect_to task_path(@task)
  end

  # #--------
  # def edit            # GET /tasks/:id/edit
  # end

  # def update          # PATCH /tasks/:id
  #   @task.update(task_params)
  #   # Will raise ActiveModel::ForbiddenAttributesError

  #   # no need for app/views/tasks/update.html.erb
  #   redirect_to task_path(@task)
  # end

  # #--------
  # def destroy         # DELETE /tasks/:id
  #   @task.destroy

  #   # no need for app/views/tasks/destroy.html.erb
  #   redirect_to tasks_path
  # end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:task).permit(:title, :details)
  end
end
