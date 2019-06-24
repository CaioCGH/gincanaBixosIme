module NewcomerHelper
    def getNewcomerFromSession
        @newcomer = Newcomer.find(user_id: current_user.id)
    end

    def getCourse(newcomer)
        @course = Course.find(newcomer.course_id)
    end
    def getTeam(newcomer)
        @team = Team.find(newcomer.team_id)
    end
end
