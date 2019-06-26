class SportInterestsNewcomerController < ApplicationController
  before_action :sport_interests_newcomer, only: [:show, :edit, :update, :destroy]

  # GET /sport_interests_newcomer
  # GET /sport_interests_newcomer.json
  def index
    if !current_user.admin then
      redirect_back fallback_location: root_path
    end
    @sport_interests_newcomer = SportInterestsNewcomer.all
  end

  def newcomer_index
    newcomer = Newcomer.find_by(user_id: current_user.id)
    @sport_interests_newcomer = SportInterestsNewcomer.where(newcomer_id: newcomer.id)
  end

  # GET /sport_interests_newcomer/1
  # GET /sport_interests_newcomer/1.json
  def show
    if !current_user.admin then
      redirect_back fallback_location: root_path
    end
  end

  # GET /sport_interests_newcomer/new
  def new
    @sport_interests_newcomer = SportInterestsNewcomer.new
  end

  # GET /sport_interests_newcomer/1/edit
  def edit
  end

  # POST /sport_interests_newcomer
  # POST /sport_interests_newcomer.json
  def create
    @sport_interests_newcomer = SportInterestsNewcomer.new(sport_interests_newcomer_params)

    respond_to do |format|
      if @sport_interests_newcomer.save
        format.html { redirect_to @sport_interests_newcomer, notice: 'Rel newcomer sport was successfully created.' }
        format.json { render :show, status: :created, location: @sport_interests_newcomer }
      else
        format.html { render :new }
        format.json { render json: @sport_interests_newcomer.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_array
    problem = false
    newcomer_id = params[:newcomer_id]
    relations = SportInterestsNewcomer.where(newcomer_id: newcomer_id)
    
    
    relations.each do |r|
      puts r
      SportInterestsNewcomer.delete(r.id)
    end
    
    if params[:sport_id] != nil
      for sport_id in params[:sport_id]
        
        @sport_interests_newcomer = SportInterestsNewcomer.new(newcomer_id: params[:newcomer_id], sport_id: sport_id)
        
        if !@sport_interests_newcomer.save
          problem = true
          break
        end
      end
    end
    respond_to do |format|
      if !problem
        @sport_interests_newcomer = SportInterestsNewcomer.where(newcomer_id: newcomer_id)
        if params[:sport_id ] != nil
          format.html { redirect_to newcomer_sports_index_url, notice: 'Os esportes foram adicionados com sucesso!' }
        else
          format.html { redirect_to newcomer_sports_index_url, notice: 'Nenhum esporte foi adicionado!' }
        end
      else
        format.html { render :new }
        format.json { render json: @sport_interests_newcomer.errors, status: :unprocessable_entity }
      end
    end
    
  end
  
  # PATCH/PUT /sport_interests_newcomer/1
  # PATCH/PUT /sport_interests_newcomer/1.json
  def update
    respond_to do |format|
      if @sport_interests_newcomer.update(sport_interests_newcomer_params)
        format.html { redirect_to @sport_interests_newcomer, notice: 'Rel newcomer sport was successfully updated.' }
        format.json { render :show, status: :ok, location: @sport_interests_newcomer }
      else
        format.html { render :edit }
        format.json { render json: @sport_interests_newcomer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sport_interests_newcomer/1
  # DELETE /sport_interests_newcomer/1.json
  def destroy
    @sport_interests_newcomer.destroy
    respond_to do |format|
      format.html { redirect_to sport_interests_newcomer_url, notice: 'Rel newcomer sport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sport_interests_newcomer
      @sport_interests_newcomer = SportInterestsNewcomer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sport_interests_newcomer_params
      params.require(:sport_interests_newcomer).permit(:newcomer_id, :sport_id)
    end
end

