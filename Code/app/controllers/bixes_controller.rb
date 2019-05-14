class BixesController < ApplicationController
  def show
    @bixe = Bixe.find(params[:id])
  end
  def index
    @bixe = Bixe.all
  end
    
  def new
    @bixe = Bixe.new
  end
    
  def create
    @bixe = Bixe.new(params.require(:bixe).permit(:name, :telephone, :course, :tutor, :sports))
    
    @bixe.save
    puts @bixe
    redirect_to @bixe
  end
end
    
private
  def bixe_params
    params.require(:bixe).permit(:name, :telephone, :course, :tutor, :sports)
  end
