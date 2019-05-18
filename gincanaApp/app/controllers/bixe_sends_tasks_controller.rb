class BixeSendsTasksController < ApplicationController
  before_action :set_bixe_sends_task, only: [:show, :edit, :update, :destroy]

  # GET /bixe_sends_tasks
  # GET /bixe_sends_tasks.json
  def index
    @bixe_sends_tasks = BixeSendsTask.all
  end

  # GET /bixe_sends_tasks/1
  # GET /bixe_sends_tasks/1.json
  def show
  end

  # GET /bixe_sends_tasks/new
  def new
    @bixe_sends_task = BixeSendsTask.new
  end

  # GET /bixe_sends_tasks/1/edit
  def edit
  end

  # POST /bixe_sends_tasks
  # POST /bixe_sends_tasks.json
  def create
    puts 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n '  + params.to_s
    @bixe_sends_task = BixeSendsTask.new(bixe_sends_task_params)
    puts 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n '  + bixe_sends_task_params.to_s
    @user = current_user
    @rel_user_bixe = RelUserBixe.find_by_user_id(@user.id)
    @bixe = Bixe.find(@rel_user_bixe.bixe_id)
    @bixe_sends_task.bixe_id = @bixe.id
    @bixe_sends_task.is_valid = false
    @bixe_sends_task.feedback = 'aguardando verificação da comissão'


    respond_to do |format|
      if @bixe_sends_task.save
        format.html { redirect_to @bixe_sends_task, notice: 'Bixe sends task was successfully created.' }
        format.json { render :show, status: :created, location: @bixe_sends_task }
      else
        format.html { render :new }
        format.json { render json: @bixe_sends_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bixe_sends_tasks/1
  # PATCH/PUT /bixe_sends_tasks/1.json
  def update
    respond_to do |format|
      if @bixe_sends_task.update(bixe_sends_task_params)
        format.html { redirect_to @bixe_sends_task, notice: 'Bixe sends task was successfully updated.' }
        format.json { render :show, status: :ok, location: @bixe_sends_task }
      else
        format.html { render :edit }
        format.json { render json: @bixe_sends_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bixe_sends_tasks/1
  # DELETE /bixe_sends_tasks/1.json
  def destroy
    @bixe_sends_task.destroy
    respond_to do |format|
      format.html { redirect_to bixe_sends_tasks_url, notice: 'Bixe sends task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bixe_sends_task
      @bixe_sends_task = BixeSendsTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bixe_sends_task_params
      puts 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA\n '  + params.to_json
      params.require(:bixe_sends_task).permit(:task_id, :bixe_id, :task_id, :is_valid, :index, :score, :photo)
    end
end
