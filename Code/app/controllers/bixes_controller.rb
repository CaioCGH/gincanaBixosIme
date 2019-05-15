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
    @user = User.new(params.require(:bixe).permit(:email, :password))
    @user.save!
    
    @bixe = Bixe.new(params.require(:bixe).permit(:name, :telephone, :course, :tutor, :sports))
    @bixe.save!

    @bixe_has_user = BixeHasUser.new(bixe_id: @bixe.id, user_id: @user.id)
    @bixe_has_user.save!

    # bixes tem perfil "bixe", cujo id é 1
    @user_has_profile = UserHasProfile.new(user_id: @user.id, profile_id: 1)
    @user_has_profile.save!
    
    redirect_to @bixe
  end
end
    
private
  def bixe_params
    params.require(:bixe).permit(:name, :telephone, :course, :tutor, :sports)
  end
