module NewcomerHelper
    def getNewcomerFromSession
        @newcomer = Newcomer.find(user_id: current_user.id)
    end

    def getCourse(newcomer)
        @course = Course.find(newcomer.course_id)
    end
    def getTeam(newcomer)
        if newcomer != nil
            return @team = Team.find(newcomer.team_id)
        else
            return nil
    end
end
