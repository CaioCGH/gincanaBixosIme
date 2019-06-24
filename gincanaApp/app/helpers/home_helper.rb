module HomeHelper
    def getTeamFromSession
        newcomer = Newcomer.find_by(user_id: current_user.id)
        @team = Team.find(newcomer.team_id)
    end
end
