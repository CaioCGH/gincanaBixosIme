module TeamsHelper
    def getTeamNewcomers(team)
        @newcomers = Newcomer.where("team_id = #{team.id}")
    end
end
