class BixesController < ApplicationController
  before_action :set_bix, only: [:show, :edit, :update, :destroy]

  # GET /bixes
  # GET /bixes.json
  def index
    if !current_user.admin then
      redirect_back fallback_location: root_path
    end
    @bixes = Bixe.all
  end

  # GET /bixes/1
  # GET /bixes/1.json
  def show
  end

  # GET /bixes/new
  def new
    @bixe = Bixe.new
  end

  # GET /bixes/1/edit
  def edit
  end

  # POST /bixes
  # POST /bixes.json
  def create
    @bixe = Bixe.new(bix_params)
    bixe_id = Bixe.last.id + 1 
    @bixe.team_id = bixe_id%4
    @bixe.is_valid = false

    respond_to do |format|
      if @bixe.save
        format.html { redirect_to root_path, notice: 'Bixe was successfully created.' }
        format.json { render :show, status: :created, location: @bixe }
      else
        format.html { render :new }
        format.json { render json: @bixe.errors, status: :unprocessable_entity }
      end
    end

    @relub = RelUserBixe.new(user_id: current_user.id, bixe_id: @bixe.id, bixe: @bixe)
    @relub.save!
  end

  # PATCH/PUT /bixes/1
  # PATCH/PUT /bixes/1.json
  def update
    respond_to do |format|
      if @bixe.update(bix_params)
        format.html { redirect_to @bixe, notice: 'Bixe was successfully updated.' }
        format.json { render :show, status: :ok, location: @bixe}
      else
        format.html { render :edit }
        format.json { render json: @bixe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bixes/1
  # DELETE /bixes/1.json
  def destroy
    @bixe.destroy
    respond_to do |format|
      format.html { redirect_to bixes_url, notice: 'Bixe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bix
      @bixe = Bixe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bix_params
      puts 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA'
      puts params
      params.require(:bixe).permit(:name, :telephone, :course, :course_id, :tutor, :is_valid, :team_id)
    end
end
