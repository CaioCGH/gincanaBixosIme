class BixesController < ApplicationController
  before_action :set_bix, only: [:show, :edit, :update, :destroy]

  # GET /bixes
  # GET /bixes.json
  def index
    @bixes = Bixe.all
  end

  # GET /bixes/1
  # GET /bixes/1.json
  def show
  end

  # GET /bixes/new
  def new
    @bix = Bixe.new
  end

  # GET /bixes/1/edit
  def edit
  end

  # POST /bixes
  # POST /bixes.json
  def create
    @bix = Bixe.new(bix_params)

    respond_to do |format|
      if @bix.save
        format.html { redirect_to @bix, notice: 'Bixe was successfully created.' }
        format.json { render :show, status: :created, location: @bix }
      else
        format.html { render :new }
        format.json { render json: @bix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bixes/1
  # PATCH/PUT /bixes/1.json
  def update
    respond_to do |format|
      if @bix.update(bix_params)
        format.html { redirect_to @bix, notice: 'Bixe was successfully updated.' }
        format.json { render :show, status: :ok, location: @bix }
      else
        format.html { render :edit }
        format.json { render json: @bix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bixes/1
  # DELETE /bixes/1.json
  def destroy
    @bix.destroy
    respond_to do |format|
      format.html { redirect_to bixes_url, notice: 'Bixe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bix
      @bix = Bixe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bix_params
      params.require(:bixe).permit(:name, :telephone, :course, :tutor, :is_valid)
    end
end
