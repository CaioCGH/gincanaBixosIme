class TeamsController < ApplicationController
    def show
        @team = Team.find(params[:id])
    end
    def index
        @teams = Team.all
    end

    def new
    end

    def create
        print params
        @team = Team.new(params.require(:team).permit(:name, :score, :placement))
        @team.save
        redirect_to @team
    end

    private
    def team_params
        params.require(:team).permit(:name, :score, :placement)
    end
end
