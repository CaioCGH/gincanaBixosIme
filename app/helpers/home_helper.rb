module HomeHelper
    def getTeamFromSession
        newcomer = Newcomer.find_by(user_id: current_user.id)
        if newcomer.team_id.present?
            @team = Team.find(newcomer.team_id)
        else
            @team = nil
        end
    end
end
