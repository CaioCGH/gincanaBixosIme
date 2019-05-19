class RelBixeSportsController < ApplicationController
  before_action :set_rel_bixe_sport, only: [:show, :edit, :update, :destroy]

  # GET /rel_bixe_sports
  # GET /rel_bixe_sports.json
  def index
    if !current_user.admin then
      redirect_back fallback_location: root_path
    end
    @rel_bixe_sports = RelBixeSport.all
  end

  # GET /rel_bixe_sports/1
  # GET /rel_bixe_sports/1.json
  def show
    if !current_user.admin then
      redirect_back fallback_location: root_path
    end
  end

  # GET /rel_bixe_sports/new
  def new
    @rel_bixe_sport = RelBixeSport.new
  end

  # GET /rel_bixe_sports/1/edit
  def edit
  end

  # POST /rel_bixe_sports
  # POST /rel_bixe_sports.json
  def create
    @rel_bixe_sport = RelBixeSport.new(rel_bixe_sport_params)

    respond_to do |format|
      if @rel_bixe_sport.save
        format.html { redirect_to @rel_bixe_sport, notice: 'Rel bixe sport was successfully created.' }
        format.json { render :show, status: :created, location: @rel_bixe_sport }
      else
        format.html { render :new }
        format.json { render json: @rel_bixe_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rel_bixe_sports/1
  # PATCH/PUT /rel_bixe_sports/1.json
  def update
    respond_to do |format|
      if @rel_bixe_sport.update(rel_bixe_sport_params)
        format.html { redirect_to @rel_bixe_sport, notice: 'Rel bixe sport was successfully updated.' }
        format.json { render :show, status: :ok, location: @rel_bixe_sport }
      else
        format.html { render :edit }
        format.json { render json: @rel_bixe_sport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rel_bixe_sports/1
  # DELETE /rel_bixe_sports/1.json
  def destroy
    @rel_bixe_sport.destroy
    respond_to do |format|
      format.html { redirect_to rel_bixe_sports_url, notice: 'Rel bixe sport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rel_bixe_sport
      @rel_bixe_sport = RelBixeSport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rel_bixe_sport_params
      params.require(:rel_bixe_sport).permit(:bixe_id, :sport_id)
    end
end
