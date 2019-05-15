class TasksController < ApplicationController
    def show
        @task = Task.find(params[:id])
    end
    def index
        @tasks = Task.all
    end

    def new
    end

    def create
        print params
        @task = Task.new(params.require(:task).permit(:name, :description, :scoring_type, :task_type, :sendable))
        @task.save
        redirect_to @task
    end

    private
    def task_params
        params.require(:task).permit(:name, :description, :scoring_type, :task_type, :sendable)
    end
end
