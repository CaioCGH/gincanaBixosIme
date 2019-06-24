class NewcomerSendsTasksController < ApplicationController
  before_action :set_newcomer_sends_task, only: [:show, :edit, :update, :destroy]

  # GET /newcomer_sends_tasks
  # GET /newcomer_sends_tasks.json
  def index
    if !current_user.admin then
      redirect_back fallback_location: root_path
    end
    @newcomer_sends_tasks = NewcomerSendsTask.all
  end

  # GET /newcomer_sends_tasks/1
  # GET /newcomer_sends_tasks/1.json
  def show
  end

  # GET /newcomer_sends_tasks/new
  def new
    @newcomer_sends_task = NewcomerSendsTask.new
  end

  # GET /newcomer_sends_tasks/1/edit
  def edit
  end

  # POST /newcomer_sends_tasks
  # POST /newcomer_sends_tasks.json
  def create
    @newcomer_sends_task = NewcomerSendsTask.new(newcomer_sends_task_params)
    newcomer = Newcomer.find_by(user_id: current_user.id)
    @newcomer_sends_task.newcomer_id = newcomer.id
    @newcomer_sends_task.is_valid = false
    @newcomer_sends_task.feedback = 'aguardando verificação da comissão'


    respond_to do |format|
      if @newcomer_sends_task.save
        format.html { redirect_to @newcomer_sends_task, notice: 'Newcomer sends task was successfully created.' }
        format.json { render :show, status: :created, location: @newcomer_sends_task }
      else
        format.html { render :new }
        format.json { render json: @newcomer_sends_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newcomer_sends_tasks/1
  # PATCH/PUT /newcomer_sends_tasks/1.json
  def update
    respond_to do |format|
      puts 
      if @newcomer_sends_task.update(newcomer_sends_task_params)
        format.html { redirect_to @newcomer_sends_task, notice: 'Newcomer sends task was successfully updated.' }
        format.json { render :show, status: :ok, location: @newcomer_sends_task }
      else
        format.html { render :edit }
        format.json { render json: @newcomer_sends_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newcomer_sends_tasks/1
  # DELETE /newcomer_sends_tasks/1.json
  def destroy
    @newcomer_sends_task.destroy
    respond_to do |format|
      format.html { redirect_to newcomer_sends_tasks_url, notice: 'Newcomer sends task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newcomer_sends_task
      @newcomer_sends_task = NewcomerSendsTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newcomer_sends_task_params
      params.require(:newcomer_sends_task).permit(:newcomer_id, :task_id, :is_valid, :index, :score, :photo, :feedback)
    end
end
