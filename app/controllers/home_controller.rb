class HomeController < ApplicationController
  def home
    @tasks = Task.all
    @user = current_user
    @teams = Team.all
    gon.teams = @teams

    if !@user.admin && Newcomer.find_by_user_id(@user.id) == nil then
      redirect_to new_newcomer_path
    end
  end

  def select_sport
    @sports = Sport.all
    @relsport = SportInterestsNewcomer.new
  end

end
