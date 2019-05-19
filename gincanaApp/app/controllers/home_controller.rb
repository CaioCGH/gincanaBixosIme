class HomeController < ApplicationController
  def home
    @tasks = Task.all
    @user = current_user
    @teams = Team.all

    if !@user.admin && RelUserBixe.find_by_user_id(@user.id) == nil then
      redirect_to new_bix_path
    end
  end

end