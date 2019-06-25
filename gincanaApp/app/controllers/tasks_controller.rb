class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    if !current_user.admin then
      redirect_back fallback_location: root_path
    end
    @tasks = Task.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @sent_task = NewcomerSendsTask.all
  end

  def scoring
    @task = Task.find(params[:task_id])
    @teams = Team.all
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end

  def score_each_team
    problem = false
    task_id = params[:task_id]
    task = Task.find(task_id)
    list_of_team_ids = params[:team_id]
    list_of_gain_points = params[:team_id]
    teams_to_save = []
    for i in 0..list_of_team_ids.length - 1
      puts i
      puts list_of_team_ids[i]
      team = Team.find(list_of_team_ids[i])
      team.score = team.score + list_of_gain_points[i].to_i
      teams_to_save.append(team)
      if !team.valid?
        problem = true
        break
      end
    end
    
    respond_to do |format|
      if !problem
        for team in teams_to_save do
          team.save
        end
        format.html { redirect_to task, notice: 'Pontuações atualizadas!.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { redirect_to task, notice: 'Houve erro nas pontuações!.' }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tasks/1
  # PATCH/PUT /tasks/1.json
  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name, :description, :score_type, :have_score, :group, :sendable, :max_send, :have_feedback)
    end
end
