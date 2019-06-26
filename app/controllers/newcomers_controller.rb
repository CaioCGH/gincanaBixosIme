class NewcomersController < ApplicationController
  before_action :set_newcomer, only: [:show, :edit, :update, :destroy]

  # GET /newcomers
  # GET /newcomers.json
  def index
    if !current_user.admin then
      redirect_back fallback_location: root_path
    end
    @newcomers = Newcomer.all
    @valid_newcomers = []
    @not_valid_newcomers = []
    for newcomer in @newcomers
      if newcomer.is_valid
        @valid_newcomers.append(newcomer)
      else
        @not_valid_newcomers.append(newcomer)
      end
    end
  end

  # GET /newcomers/1
  # GET /newcomers/1.json
  def show
  end

  # GET /newcomers/new
  def new
    @newcomer = Newcomer.new
  end

  # GET /newcomers/1/edit
  def edit
  end

  # POST /newcomers
  # POST /newcomers.json
  def create
    @newcomer = Newcomer.new(newcomer_params)
    newcomer_id = Newcomer.last.id + 1
    @newcomer.is_valid = false
    @newcomer.user_id = current_user.id


    respond_to do |format|
      if @newcomer.save
        format.html { redirect_to root_path, notice: 'Newcomer was successfully created.' }
        format.json { render :show, status: :created, location: @newcomer }
      else
        format.html { render :new }
        format.json { render json: @newcomer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newcomers/1
  # PATCH/PUT /newcomers/1.json
  def update
    respond_to do |format|
      if @newcomer.update(newcomer_params)
        format.html { redirect_to @newcomer, notice: 'Bixe foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @newcomer}
      else
        format.html { render :edit }
        format.json { render json: @newcomer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newcomers/1
  # DELETE /newcomers/1.json
  def destroy
    @newcomer.destroy
    respond_to do |format|
      format.html { redirect_to newcomers_url, notice: 'Bixe foi excluido com sucesso.' }
      format.json { head :no_content }
    end
  end

  def validate_newcomer
    newcomer_id = params[:newcomer_id]
    newcomer = Newcomer.find(newcomer_id)
    newcomer.team_id = newcomer.id%Team.count
    newcomer.is_valid = true
    newcomer.save

    respond_to do |format|
      format.html { redirect_to newcomers_url, notice: 'Bixe foi validado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newcomer
      @newcomer = Newcomer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newcomer_params
      params.require(:newcomer).permit(:name, :telephone, :course, :course_id, :tutor, :is_valid, :team_id)
    end
end
